
class HighlightsController < ApplicationController

    def index
        get_highlight
    end

    def new
        get_highlight
        @highlight =Highlight.new
    end

    def create
        # binding.pry
    end

    private

    def get_highlight
        @vacation_plan ||= VacationPlan.find_by(id: params[:vacation_plan_id])
    end

end