require 'slack-ruby-bot'

module Duckbot
  class App < SlackRubyBot::App
  end

  class Wat < SlackRubyBot::Commands::Base
    match(/#{ENV["BOT_NAME"]}\s+(.*)/) do |client, data, match|
      if rand(5) == 1
        send_message client, data.channel, 'quack'
      end
    end
  end
end

Duckbot::App.instance.run
