class CreateParkDays < ActiveRecord::Migration[6.0]
  def change
    create_table :park_days do |t|
      t.integer :vacation_plan_id
      t.integer :attraction_id
      t.integer :day_number
      t.text :daily_notes

      t.timestamps
    end
  end
end
