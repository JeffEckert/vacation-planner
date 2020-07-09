class HighlightsController < ApplicationController
    before_action :require_login
    before_action :validate_vacation_plan, only: [:index, :new]

    def index
        get_vacation_plan
    end

    def new
        get_vacation_plan
        @highlight = Highlight.new
    end

    def create
        @vacation_plan = VacationPlan.find_by(id: params[:highlight][:vacation_plan_id])
        @highlight = Highlight.new(highlight_params)
        if @highlight.save
            redirect_to vacation_plan_highlights_path(@highlight.vacation_plan)
        else
            render :new
        end

    end

    private

    def get_vacation_plan
        @vacation_plan ||= VacationPlan.find_by(id: params[:vacation_plan_id])
    end

    def validate_vacation_plan
        redirect_to vacation_plans_path unless get_vacation_plan
    end


    def highlight_params
        params.require(:highlight).permit(:attraction_id, :day_number, :daily_notes, :vacation_plan_id)
    end

end