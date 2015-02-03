class PicturesController < ApplicationController

	def index
		@pictures = Picture.all #created @pictures in the index action of the pictures controller
	end

	def show
		@picture = Picture.find(params[:id])
	end

end
