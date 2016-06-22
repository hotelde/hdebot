# Description:
#   Find a hotel.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

moment = require 'moment'

module.exports = (robot) ->
  robot.respond /Ich (?:möchte|suche) ein (?:Zimmer|Hotel) vom (.*) bis zum (.*) in (.*)/i, (res) ->
#  robot.respond /hotel (.*)-(.*) in (.*)/i, (res) -> # easier debug command
    moment.locale('de')
    formatDe = 'DD.MM.YYYY'
    fromDate = moment(res.match[1], formatDe)
    toDate = moment(res.match[2], formatDe)
    location = res.match[3]
    res.send "Suche ein Hotel vom #{moment(fromDate).format('LL')} bis #{moment(toDate).format('LL')} in #{location}"
    lac = "http://www.hotel.de/lac/json?pf=#{location}&lng=DE&mobiredirect=no"
    robot.http(lac)
        .header('Accept', 'application/json')
        .get() (err,lacres,body) ->
            if lacres.statusCode isnt 200
                res.send "Request didn't come back HTTP 200 :( (was " + lacres.statusCode + ")" 
                return
            strippedResponse = body.substring(1, body.length-2)
            result = JSON.parse(strippedResponse).Results[1]
            searchCode = result.SearchCode
            name = result.Name
            #locationId = /l(\d*)\D{4,4}/i.exec(searchCode)[1]
            locationId = searchCode.match(/l(\d*)\D{4,4}/i)[1]

            res.send "Hotels in #{name}"
            format = 'YYYY-MM-DD'
            url = "m.hotel.de/de/hdebot/hotels-#{locationId}/#?arrival=#{moment(fromDate).format(format)}&departure=#{moment(toDate).format(format)}&rooms=1&roomType=1"
            res.send url

