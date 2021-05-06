class LocationsController < ApplicationController
  layout @locations
    def index
      @search = Location.ransack(params[:q])
      @locations = @search.result.paginate(page: params[:page], per_page: 9)

        @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
          marker.lat location.lat
          marker.lng location.lng
        end
      end

  def show
    @location = Location.find(params[:id])
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
      end
  end

    def search

    end
  end
