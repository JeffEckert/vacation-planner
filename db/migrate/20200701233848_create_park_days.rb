class CreateParkDays < ActiveRecord::Migration[6.0]
  def change
    create_table :park_days do |t|

      t.timestamps
    end
  end
end
