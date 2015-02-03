class PicturesController < ApplicationController

	def index # Create action index
		@pictures = Picture.all # refers to all the pictures
	end

	def show # Create action show
		@picture = Picture.find(params[:id]) # refers to the picture with specific id
	end

	def new
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end


end
