class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers
    end

    def show
    end
end
