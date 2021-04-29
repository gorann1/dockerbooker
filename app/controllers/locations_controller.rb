class LocationsController < ApplicationController
  layout @locations
  def index
    @locations = Location.all
     end
  end
