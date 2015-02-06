class PicturesController < ApplicationController

	def index # Create action index
		# @pictures = Picture.all # refers to all the picture records/instances in the pictures database
    @most_recent_pictures = Picture.most_recent_five
    @month_old_pictures = Picture.created_before(1.month.ago)
	end

  def destroy # Define destroy action 
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end

  def edit # Define edit action
    @picture = Picture.find(params[:id]) # refers to the picture with the id
  end

  def update # Define update action
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

	def show # Create action show
		@picture = Picture.find(params[:id]) # refers to the picture with specific id
	end

	def new
    @picture = Picture.new #Create a new instance of the pictures database
	end

	def create
    @picture = Picture.new(picture_params) #make a new picture with what picture_params returns
    if @picture.save #if the save for the picture was successful...
      redirect_to pictures_url #go to index.html.erb page
    else
      render :new #otherwise render the view with the action :new (new.html.erb)
    end
	end

  private #Define a private method that is only accessable in this file
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
