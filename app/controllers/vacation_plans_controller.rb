class VacationPlansController < ApplicationController

    def index
     @vacation_plans = VacationPlan.all
    end

    def new
        @vacation_plans = VacationPlan.new
    end

    def create
        @vacation_plans = VacationPlan.new(vacation_plan_params)
            if @vacation_plans.save
                redirect_to new_vacation_plan_park_day_path(@vacation_plans)
            else
                render :new
            end
    end

    private

    def vacation_plan_params
        params.require(:vacation_plan).permit(:name)
    end


end