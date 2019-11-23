class SongsController < ApplicationController

    def index
        @songs = Song.all
    end
    
    def show
        get_instance
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(define_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        get_instance
    end

    def update
        get_instance
        @song.update(define_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private

    def get_instance
        @song = Song.all.find(params[:id])
    end

    def define_params(*args)
        params.require(:song).permit(*args)
    end
end
