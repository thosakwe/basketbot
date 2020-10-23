require 'dotenv/load'
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new(
  token:      ENV['discord_bot_token'],
  client_id:  ENV['discord_bot_id'],
  prefix:     ENV['$']
)

bot.message(content: 'scores') do |event|
    event.respond 'TODO: Show scores for current game'
end

bot.message(content: 'games') do |event|
    event.respond 'TODO: Show tonight\'s games'
end

bot.run
