class CreateVacationPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :vacation_plans do |t|
      t.string :name
      t.text :vacation_description
      t.timestamps
    end
  end
end
