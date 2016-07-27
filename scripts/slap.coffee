# Description:
#   Franconian version of https://github.com/lkysow/hubot-irc-trout-slap/blob/master/trout-slap.coffee.
#
# Commands:
#   hubot slap TARGET - hubot will slap the specified target


module.exports = (robot) ->

  robot.respond /slap\s(.+)/i, (msg) ->
    target = msg.match[1].replace(/\s+$/g, "")
    msg.send "/me gibbd #{target} err ordndlicha Schelln."