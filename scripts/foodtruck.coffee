cheerio = require('cheerio')

module.exports = (robot) ->
	robot.respond /foodtruck/i, (msg) ->
		robot.http('http://www.nuernberg-und-so.de/thema/food-truck')
			.get() (err, response, body) ->
				if response.statusCode isnt 200
					msg.send "Request didn't come back HTTP 200 :( (was " + response.statusCode + ")" 
					return
				$ = cheerio.load(body)
				info = $('.content').find('div.foodtruckInfo:contains("Marienberg")')	
				if !info.html()
					msg.send('No foodtruck today :(')
					return
				name = info.html().match(/&apos;tourdaten&apos;, &apos;(.*)&apos;/)[1]
				imgUrl = $(info).prev().children().attr('src')
				msg.send name + ', ' + info.text()
				msg.send imgUrl
