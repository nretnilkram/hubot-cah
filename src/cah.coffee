# Description:
#   Play Updated Cards Against Humanity in Hubot
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_CAH_HEAR - Optional. If set, bot will respond to any line that begins with "black card" or "white card" without needing to address the bot directly.
#
# Commands:
#   hubot black card - Returns black card
#   hubot white card - Displays a white card
#   hubot white card n - Displays n white cards
#
# Author:
#   nrentnilkram

cards = require './data/cards.json'

module.exports = (robot) ->

  robot.respond /white card( \d+)?/i, (msg) ->
    count = if msg.match[1]? then parseInt(msg.match[1], 10) else 1
    msg.send msg.random cards['whiteCards'] for i in [1..count]

  robot.respond /black card/i, (msg) ->
    card = msg.random cards['blackCards']
    msg.send card['text']

  # Optional feature, not added to docs since you can't conditionally document commands
  if process.env.HUBOT_CAH_HEAR
    robot.hear /^white card( \d+)?/i, (msg) ->
      count = if msg.match[1]? then parseInt(msg.match[1], 10) else 1
      msg.send msg.random cards['whiteCards'] for i in [1..count]

    robot.hear /^black card/i, (msg) ->
      card = msg.random cards['blackCards']
      msg.send card['text']
