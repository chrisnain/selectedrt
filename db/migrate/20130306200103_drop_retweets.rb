class DropRetweets < ActiveRecord::Migration
  def up
    drop_table :retweets
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
