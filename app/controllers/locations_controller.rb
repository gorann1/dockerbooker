class LocationsController < ApplicationController
  layout @locations
    def index
      @locations = Location.all
      @q = Location.ransack(params[:q])
      @locations = @q.result(distinct: true)
    end

    def search

    end
  end
