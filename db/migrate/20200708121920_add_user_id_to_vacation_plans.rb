class AddUserIdToVacationPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :vacation_plans, :user_id, :integer
  end
end
