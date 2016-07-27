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
  "https://i.imgflip.com/7wd8f.jpg",
  "http://kensingtonchronicle.com/wp-content/uploads/2014/08/shark.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-1.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-2.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-3.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-5.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-7.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-12.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-13.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-14.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-22.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-23.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-26.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-27.jpg",
  "http://www.ldssmile.com/wp-content/uploads/2013/10/50-Inspiritational-Motivational-Thoughts-quotes-and-memes-37.jpg",
  "http://channongray-1e3d.kxcdn.com/wp-content/uploads/2015/07/54611478.jpg",
  "https://cdn.meme.am/instances/64896308.jpg",
  "http://img.over-blog-kiwi.com/0/62/93/17/20140908/ob_4cbc87_motivation-no1-480x480.jpg",
  "https://66.media.tumblr.com/6277239d4803b7211f0ce881e72e46ae/tumblr_o0uchpCQ8h1s4ppaao1_500.jpg",
  "https://pbs.twimg.com/media/CnFgDERXYAAWdAh.jpg",
  "https://s-media-cache-ak0.pinimg.com/736x/1a/1d/74/1a1d7496ddb71b14979a1e75414f1dca.jpg",
  "http://img.memecdn.com/Motivation-to-go-to-the-gym_o_91684.jpg",
  "https://3.bp.blogspot.com/-PEad181Q6hU/VN92abd7FPI/AAAAAAADIhQ/sMzpwgOwtD0/s1600/Cat%2B00108.jpg",
  "http://img.memecdn.com/some-motivators-work-better-than-others_o_3015991.jpg",
]

module.exports = (robot) ->
  robot.hear /motivate me/i, (msg) ->
    msg.send msg.random motivationals