class CreateActivitiesPositionsTable < ActiveRecord::Migration
  def self.up
    create_table :activities_positions, :id => false do |t|
      t.integer :activity_id
      t.integer :position_id
    end
  end

  def self.down
    drop_table :activities_positions
  end
end
