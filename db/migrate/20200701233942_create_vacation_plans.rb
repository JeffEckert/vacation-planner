class CreateVacationPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :vacation_plans do |t|

      t.timestamps
    end
  end
end
