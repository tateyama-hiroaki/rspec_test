# 注：本当に動かす場合はtwitter gemが必要です
require 'twitter'
	
class WeatherBot
  def tweet_forecast
    twitter_client.update '今日は晴れです'
  end

  def twitter_client
    Twitter::REST::Client.new
  end
end

# weather_bot = WeatherBot.new
# pp weather_bot.methods