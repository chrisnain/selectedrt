class TwitterController < ApplicationController

  Twitter.configure do |config|
    config.consumer_key       = 'VBC8ZQVRtjRFgEjDOSfi8A'
    config.consumer_secret    = 'nHtXkVSJG6nh4SvJ5Y4g9FE0pOUhn52unvDsJ6eeqoU'
    config.oauth_token        = '439238568-NMlq1raEDjcgPUDGyN1lcXkQCaHSnZEMwzZk7oLU'
    config.oauth_token_secret = '47YOHfg6pr0Cgno4lf0H5Gj6x72FUNFn8fV8Pm4Y'
  end
  
  def show
    @accounts = Account.all
  end
end
