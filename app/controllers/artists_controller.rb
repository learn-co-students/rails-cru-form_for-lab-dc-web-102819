class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(define_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def show
        get_instance
    end

    def edit
        get_instance
    end

    def update
        get_instance
        @artist.update(define_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private

    def get_instance
        @artist = Artist.all.find(params[:id])
    end

    def define_params(*args)
        params.require(:artist).permit(*args)
    end
end