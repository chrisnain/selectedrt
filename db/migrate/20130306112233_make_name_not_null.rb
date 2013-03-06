class MakeNameNotNull < ActiveRecord::Migration
  def up
    execute "ALTER TABLE accounts MODIFY name NOT NULL"
  end

  def down
    execute "ALTER TABLE accounts MODIFY name NULL"
  end
end
