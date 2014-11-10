class LocationsController < ApplicationController
  def create
    @location=Location.create(location_params)
    redirect_to root_path
  end

  def location_params
    params.require(:location).permit(:name, :state)
  end
end
