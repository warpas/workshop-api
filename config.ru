# require "news_feed"
require ::File.expand_path('../lib/news_feed_api',  __FILE__)
# require ::File.expand_path('../config/environment',  __FILE__)

# require "greeter"
# run NewsFeed.new
run NewsFeedAPI.new
