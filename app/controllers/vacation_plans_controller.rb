class VacationPlansController < ApplicationController

    def index
     @vacation_plans = VacationPlan.all
    end

    def new
        @vacation_plans = VacationPlan.new
    end

    def create

    end


end