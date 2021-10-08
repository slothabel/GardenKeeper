class GardensController < ApplicationController 
    def new
        @garden = Garden.new(user_id: session[:user_id])
    end

    def create
        @garden = Garden.new(garden_params)
        if @garden.save
            redirect_to garden_path(@garden)
        else
            redirect_to new_garden_path
        end
    end

    def show
        @garden = Garden.find(params[:id])
    end

    def index
        @garden = Garden.where(user_id: params[:user_id])
    end

    private
    def garden_params
        params.require(:garden).permit(:user_id, :plant_id, :address)
    end

end#class ender