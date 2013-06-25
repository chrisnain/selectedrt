class Retweet < ActiveRecord::Base
  rescue Twitter::Error => e
  logger.error "#{e.message}."
  raise CouldNotRetweetError.new("Could not retweet")
end
