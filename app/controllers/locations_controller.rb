class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_user, only: [:edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    # @locations = Location.all.order('name')
    # @locations = Location.all.order('name')

    if params[:search].present?
       @locations = Location.near(params[:search], 1)
      #  @location = params[:search]

      #  p "Location.find(params search)  "Location.find(params[:search])
      #  p "Location find params id:  "Location.find(params[:id])
    else
       @locations = Location.all

    end

    # @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
    marker.lat location.latitude
    marker.lng location.longitude
    marker.infowindow "<a target=location.name href='https://rocky-crag-53306.herokuapp.com/locations/"+"#{location.id}"+"'>#{location.name}</a>"
    # marker.infowindow "<a target=location.name href='localhost:3000/locations/"+"#{location.id}"+"'>#{location.name}</a>"
    # marker.infowindow "<a target=location.name href='https://www.pinterest.com/"+"'>#{location.name}</a>"

    end

end

  # GET /locations/1
  # GET /locations/1.json
  def show
    # @location = Location.find(params[:id])
  end

  # GET /locations/new
  def new
    @location = current_user.locations.build
  end

  # GET /locations/1/edit
  def edit
    if current_user != @location.user
      redirect_to "/locations"
    end
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = current_user.locations.build(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :street_number, :street_name, :suite, :city, :state, :zip_code)
    end

end
