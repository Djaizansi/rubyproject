class MediaController < ApplicationController
    before_action :authenticate_user!
    before_action :set_media, only:[:show, :edit, :update, :destroy]

    def index
        @media = Medium.all
    end

    def new
        @media = Medium.new
    end

    def show
    end

    def create
        @media = Medium.new(media_params)
        if @media.save
            redirect_to @media, notice: "Votre film a bien été ajouté chez Locate & GO !"
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @media.update(media_params)
            redirect_to @media, notice: "media updated"
        else
            render :edit
        end
    end

    def destroy
        @media.destroy
        redirect_to @media, notice: "media destroyed"
    end

    private
    def media_params
        params.require(:medium).permit(:title, :content, :quality, :duration, :user_id, :image)
    end
    def set_media
        @media = Medium.find(params[:id])
    end
end
