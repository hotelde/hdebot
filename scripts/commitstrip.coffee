# Description:
#   Commit Strip
#
# Commands:
#   hubot show me commitstrip - gets the newest CommitStrip
#
# Author:
#   donjogi

cheerio = require('cheerio')

module.exports = (robot) ->
  robot.respond /((show|fetch)( me )?)?commitstrip/i, (msg) ->
    robot.http('http://www.commitstrip.com/en')
      .get() (err, response, body) ->
        if response.statusCode isnt 200
          msg.send "First request didn't come back HTTP 200 :( (was " + response.statusCode + ")"
          return

        $ = cheerio.load(body)
        link = $('.excerpt a').attr('href')

        robot.http(link)
          .get() (err, response, body) ->
            if response.statusCode isnt 200
              msg.send "Second request didn't come back HTTP 200 :( (was " + response.statusCode + ")"
              return
            $ = cheerio.load(body)
            name = $('.entry-title').text()
            img = $('.entry-content img').attr('src')

            msg.send name
            msg.send img
