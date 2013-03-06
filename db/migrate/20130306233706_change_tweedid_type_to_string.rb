class ChangeTweedidTypeToString < ActiveRecord::Migration
  def up
	change_column :retweets, :tweetid, :string
  end

  def down
	change_column :retweets, :tweetid, :integer
  end
end
