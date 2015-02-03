class PicturesController < ApplicationController

	def index # Create action index
		@pictures = Picture.all # refers to all the pictures
	end

	def show # Create action show
		@picture = Picture.find(params[:id]) # refers to the picture with specific id
	end

	def new
    @picture = Picture.new
	end

	def create
    @picture = Picture.new(picture_params) #make a new picture with what picture_params returns
    if @picture.save #if the save for the picture was successful...
      redirect_to pictures_url #go to index.html.erb page
    else
      render :new #otherwise render the view with the action :new (new.html.erb)
    end
		# render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
