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
    bathroom_params
    bathroom = Bathroom.new(bathroom_params)
    if bathroom.save
      redirect_to bathroom_path(bathroom)
    end
  end


  def show
    bathroom_id = params[:id]
    @bathroom = Bathroom.find_by(id: bathroom_id)
    location_id = params[:location_id]
    @location = Location.find_by(id: location_id)
  end


  def edit
    @locations = Location.all
    bathroom_id = params[:id]
    @bathroom = Bathroom.find_by(id: bathroom_id)
    location_id = params[:location_id]
    @location = Location.find_by(id: location_id)
  end


  def update
    location_id = params[:location_id]
    location = Location.find_by(id: location_id)
    bathroom_id = params[:id]
    bathroom = Bathroom.find_by(id: bathroom_id)
    bathroom_params

    if bathroom.update(bathroom_params)
      flash[:notice] = "Updated bathroom successfully."
      redirect_to bathroom_path(bathroom)
    else
      flash[:error] = bathroom.errors.full_messages.join(", ")
      redirect_to edit_bathroom_path(bathroom)
    end
  end


  def destroy
    bathroom_id = params[:id]
    bathroom = Bathroom.find_by(id: bathroom_id)
    bathroom_location_id = bathroom.location_id
    bathroom.delete

    location_id = params[:location_id]
    location = Location.find_by(id: location_id)
    redirect_to location_path(bathroom_location_id)
  end




  private

  def bathroom_params
    params.require(:bathroom).permit(:location_description, :is_gendered, :is_fam_friendly, :is_accessible, :rating, :location_id)
  end

end
