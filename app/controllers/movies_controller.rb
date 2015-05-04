class MoviesController < ApplicationController

	def index
		search = params[:q]
		
		# safe way
        @movies = Movie.where("title LIKE ?", "%#{search}%")
        # Unsafe way
        # @movies = Movie.where("title LIKE \"%#{search}%\"")
        render :json => @movies 


    end
end
