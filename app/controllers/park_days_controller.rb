
class ParkDaysController < ApplicationController

    def index
        get_vacation_day
    end

    def new
        get_vacation_day
        @park_day =ParkDay.new
    end

    def create
        # binding.pry
    end

    private

    def get_vacation_day
        @vacation_plan ||= VacationPlan.find_by(id: params[:vacation_plan_id])
    end

end