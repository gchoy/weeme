class BathroomsController < ApplicationController


  def index
    @bathrooms = Bathroom.all
  end


  def new
    @bathroom = Bathroom.new
    @locations = Location.all
  end


  def create
    @locations = Location.all
    bathroom_params = params.require(:bathroom).permit(:location_description, :is_gendered, :is_fam_friendly, :is_accessible, :rating, :location_id)
    bathroom = Bathroom.new(bathroom_params)
    if bathroom.save
      redirect_to bathrooms_path
    end
  end


  def show
    bathroom_id = params[:id]
    @bathroom = Bathroom.find_by(id: bathroom_id)
    location_id = params[:location_id]
    @location = Location.find_by(id: location_id)
  end


  def edit
    #
  end


  def update
    #
  end


  def destroy
    #
  end

end
