class GenresController < ApplicationController

	def index
		@genres = Genre.all		
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
		genre = Genre.create(strong_params(:name))
		redirect_to genre_path(genre)
	end

	def edit
		@genre = Genre.new
	end

	def update
		genre = Genre.create(strong_params(:name))
		genre.update(strong_params(:name))
	end


	private

		def strong_params(*args)
		  params.require(:genre).permit(*args)
		end

end
