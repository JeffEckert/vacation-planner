class HighlightsController < ApplicationController
    before_action :require_login
    before_action :get_vacation_plan, only: [:index, :new]

    def index
        redirect_if_invalid
    end

    def new
        @highlight = Highlight.new
       redirect_if_invalid
    end

    def create
        @vacation_plan = VacationPlan.find_by(id: params[:highlight][:vacation_plan_id])
        if user_authorized?
        @highlight = Highlight.new(highlight_params)
            if @highlight.save
                redirect_to vacation_plan_highlights_path(@highlight.vacation_plan)
            else
                 render :new
            end
        else
            redirect_to vacation_plans_path
        end
    end

    private

    def get_vacation_plan
        @vacation_plan ||= VacationPlan.find_by(id: params[:vacation_plan_id])
    end

    def user_authorized?
        @vacation_plan.user && (@vacation_plan.user.id == current_user.id)
    end

    def redirect_if_invalid
        if @vacation_plan.nil? || !user_authorized?
            redirect_to vacation_plans_path
        end
    end


    def highlight_params
        params.require(:highlight).permit(:attraction_id, :day_number, :daily_notes, :vacation_plan_id)
    end

end