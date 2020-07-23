class AttractionsController < ApplicationController

    def index
        if params[:park] != nil
            @attractions = Attraction.where(nil)
            @attractions = @attractions.filter_by_park(params[:park]) 
            render :search
        else
            @attractions = Attraction.all
        end
        
    end

    def filter_by_park
        # byebug
        @attractions = Attraction.where(nil)
        @attractions = @attractions.filter_by_park(params[:park]) if params[:park].present? 
        # byebug
        render :index
    end

    def magic_kingdom
        @attractions = Attraction.magic_kingdom
        render :index
    end

    def epcot
        @attractions = Attraction.epcot
        render :index
    end

    def hollywood_studios
        @attractions = Attraction.hollywood_studios
        render :index
    end

    def animal_kingdom
        @attractions = Attraction.animal_kingdom
        render :index
    end


end
