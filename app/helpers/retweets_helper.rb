module RetweetsHelper
  
  # method that saves a retweet and returns if saved
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
  
end
