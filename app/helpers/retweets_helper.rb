module RetweetsHelper
  
  ###
  # method that saves a retweet and returns if saved
  ###
  def save_distinct tweetid  
    exists = false
    retweets = Retweet.all
    
    # markup if retweet allready exists
    retweets.each do |retweet|
      if retweet.tweetid == tweetid
        exists = true
      end
    end
    
    # save retweet without markup
    if !exists
      retweet = Retweet.new(:tweetid => tweetid)
      retweet.save
      return true
    else
      return false
    end
  end
  
  ###
  # method that grabs all relevant tweets
  ###
  def get_tweetids
    d = Date.today.advance(:days => -1).strftime("%Y-%m-%d")
    tweetstatus = Array.new
    
    @accounts.each do |account|
      result = Twitter.search("from:" + account.name + ", since:" + d, :result_type => "recent")
      result.results.map do |status|
        status.urls.each do |url|
          if url.expanded_url.include? account.url
            tweetstatus << status
          end
        end
      end
    end
    return tweetstatus  
  end
end
