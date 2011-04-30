class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.date :date_of_activity
      t.integer :length
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
