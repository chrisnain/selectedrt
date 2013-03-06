class AddActiveToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :active, :boolean

  end
end
