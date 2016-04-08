# Description:
#   Dilbert
#
# Commands:
#   hubot show me dilbert - gets the daily dilbert
#
# Author:
#   jreichardt

cheerio = require('cheerio')

module.exports = (robot) ->
	robot.respond /((show|fetch)( me )?)?dilbert/i, (msg) ->
		robot.http('http://dilbert.com')
			.get() (err, response, body) ->
				if response.statusCode isnt 200
					msg.send "Request didn't come back HTTP 200 :( (was " + response.statusCode + ")" 
					return
				$ = cheerio.load(body)
				img = $('.img-comic')	
				name = img.attr('alt')
				imgUrl = img.attr('src')
				msg.send name
				msg.send imgUrl + '.jpg'
