class CreateRetweets < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.integer :tweetid

      t.timestamps
    end
  end
end
