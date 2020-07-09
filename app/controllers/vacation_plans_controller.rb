class VacationPlansController < ApplicationController
before_action :require_login
    def index
     @vacation_plans = current_user.vacation_plans
    end

    def new
        @vacation_plans = VacationPlan.new
    end

    def create
        @vacation_plan = current_user.vacation_plans.build(vacation_plan_params)
            if @vacation_plan.save
                redirect_to new_vacation_plan_highlight_path(@vacation_plan)
            else
                render :new
            end
    end

    private

    def vacation_plan_params
        params.require(:vacation_plan).permit(:name)
    end


end