# Description:
#   Barney Stinson Motivation
#
#   Set the environment variable HUBOT_EXTRA_MOTIVATIONALS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_EXTRA_MOTIVATIONALS
#
# Commands:
#   motivate me - Display a barney stinson motivational
#
# Author:
#   jreichardt

motivationals = [
  "http://ecx.images-amazon.com/images/I/61Ed7nWsYSL._SL1429_.jpg",
  "http://ecx.images-amazon.com/images/I/71n92gMjj6L._SL1412_.jpg",
  "http://ecx.images-amazon.com/images/I/813kmCK-vHL._SL1412_.jpg",
  "http://ecx.images-amazon.com/images/I/81klnnBG29L._SL1412_.jpg",
  "http://www.beawesomeinstead.com/wp-content/uploads/conformity.1680.1260.jpg",
  "http://ecx.images-amazon.com/images/I/71jzRj6jcgL._SL1200_.jpg",
]

module.exports = (robot) ->
  robot.hear /motivate me/i, (msg) ->
    msg.send msg.random motivationals