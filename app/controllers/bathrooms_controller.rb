class BathroomsController < ApplicationController

  def index
    @bathrooms = Bathroom.all
  end

  def new
    @bathroom = Bathroom.new
    @locations = Location.all
    #form for user to create a new bathroom
    # MUST have a location to create and save to db
  end

  def create

    @locations = Location.all
    bathroom_params = params.require(:bathroom).permit(:location_description, :is_gendered, :is_fam_friendly, :is_accessible, :rating, :location_id)
    bathroom = Bathroom.new(bathroom_params)

    if bathroom.save
      redirect_to bathrooms_path #TODO: update to show page for locations/:id/bathrooms/:id
    end

  end

end
