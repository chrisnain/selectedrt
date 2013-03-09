class TwitterController < ApplicationController

  Twitter.configure do |config|
    config.consumer_key       = '12345678987654321'
    config.consumer_secret    = 'abcdefghijklmnopqrstupwxyz'
    config.oauth_token        = '12345678987654321'
    config.oauth_token_secret = 'abcdefghijklmnopqrdtupwxyz'
  end
  
  def show
    @accounts = Account.all
  end
  
end
