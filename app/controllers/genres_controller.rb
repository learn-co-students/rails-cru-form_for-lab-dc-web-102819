class GenresController < ApplicationController

    def show
        get_instance
        @genre_songs = Song.all.where("genre_id = ?", @genre.id)
    end

    def edit
        get_instance
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(define_params(:name))
        redirect_to genre_path(@genre)
    end

    def update
        get_instance
        @genre.update(define_params(:name))
        redirect_to genre_path(@genre)
    end

    private

    def get_instance
        @genre = Genre.all.find(params[:id])
    end

    def define_params(*args)
        params.require(:genre).permit(*args)
    end
end
