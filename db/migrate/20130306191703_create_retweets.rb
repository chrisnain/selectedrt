class CreateRetweets < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.integer :id
      t.boolean :done

      t.timestamps
    end
  end
end
