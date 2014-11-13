
class LocationsController < ApplicationController
  def create
    @location=Location.create(location_params)
    redirect_to root_path
  end

  def show
    @location = Location.find(params[:id])
    @categories = Category.all
  end

  def index
    @locations = Location.all
  end

  private

  def location_params
    params.require(:location).permit(:name, :state)
  end
end
