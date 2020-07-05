
class ParkDaysController < ApplicationController

    def index
        @vacation_plan = VacationPlan.find_by(id: params[:vacation_plan_id])
    end

    def new

    end

    def create

    end

end