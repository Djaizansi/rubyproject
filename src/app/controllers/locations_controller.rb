class LocationsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_locations, only:[:show, :edit, :update, :destroy]


    def index
        @locations = Location.all
    end

    def new
        @locations = Location.new
    end

    def create
        @locations = Location.new(locations_params)
        if @locations.save
            redirect_to @locations, notice: "Votre film a bien été ajouté à votre vidéothèque !"
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @locations.update(locations_params)
            redirect_to @locations, notice: "locations updated"
        else
            render :edit
        end
    end

    def destroy
        @locations.destroy
        redirect_to @locations, notice: "locations destroyed"
    end

    private
    def locations_params
        params.require(:location).permit(:until, :user_id, :medium_id, :user_id_from)
    end
    def set_locations
        @locations = Location.find(params[:id])
    end

end
