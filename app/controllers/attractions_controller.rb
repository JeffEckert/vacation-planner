class AttractionsController < ApplicationController

    def index
        @attractions = Attraction.all
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
