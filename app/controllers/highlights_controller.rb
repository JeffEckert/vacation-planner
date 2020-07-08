
class HighlightsController < ApplicationController

    def index
        get_highlight
    end

    def new
        get_highlight
        redirect_to highlights_path if !@vacation_plan
        @highlight = Highlight.new
    end

    def create
        @vacation_plan = VacationPlan.find_by(id: params[:highlight][:vacation_plan_id])
        @highlight = Highlight.new(highlight_params)
        @highlight.save
        if @highlight.save
            redirect_to vacation_plan_highlights_path(@highlight.vacation_plan)
        else
            render :new
        end

    end

    private

    def get_highlight
        @vacation_plan ||= VacationPlan.find_by(id: params[:vacation_plan_id])
    end

    def highlight_params
        params.require(:highlight).permit(:attraction_id, :day_number, :daily_notes, :vacation_plan_id)
    end

end