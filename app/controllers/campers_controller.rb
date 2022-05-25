class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find_by(id: params[:id])
        if camper
            render json: camper
        else
            return { "error": "Camper not found" }, status: 204
        end
    end

    def create
        camper = Camper.create!(camper_params)
        # if camper
            return render json: camper
        # else
            # return { "errors": "Error posting??"}
        # end
    end

    private
    def camper_params
        params.permit(:name, :age)
    end
end
