require 'dotenv/load'
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new(
  token:      ENV['discord_bot_token'],
  client_id:  ENV['discord_bot_id'],
  prefix:     '$'
)

bot.command :scores do |event|
  event.respond "TODO: Show scores for current game"
end

bot.command :games do |event|
  event.respond "TODO: Show tonight's games"
end

bot.command :help do |event|
  response = "Here's what I do:"
  commands = {
    scores: "Show scores for current game",
    games:  "Show tonight's games"
  }.each do |key, value|
    response << "\n#{bot.prefix}#{key}\t#{value}"
  end
  event.respond response
end

bot.run
