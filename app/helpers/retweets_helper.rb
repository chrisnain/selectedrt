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
      # get tweets of definded accounts of the last day
      result = Twitter.search("from:" + account.name + ", since:" + d, :result_type => "recent")
      result.results.map do |status|
        # tweet is no answer on anyone
        if status.in_reply_to_tweet_id == nil
          #tweet has correct url
          status.urls.each do |url|
            if url.expanded_url.include? account.url
              tweetstatus << status
            end
          end  
        end
      end
    end
    return tweetstatus  
  end
  
  def do_retweet
    get_tweetids.each do |status|
      saved = save_distinct(status.id.to_s)
      if saved
        Twitter.retweet(status.id)
      end
    end
  end
end
