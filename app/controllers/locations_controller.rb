class LocationsController < ApplicationController
  layout @locations
    def index
      Location.order('id ASC').reorder('name DESC')
      @q = Location.ransack(params[:q])
      # @locations = @q.result.includes(:category)
      @locations = @q.result.paginate(page: params[:page], per_page: 9)

        @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
          marker.lat location.lat
          marker.lng location.lng
        end
      end

  def show
    @location = Location.find(params[:id])
    @location.photos.attach(params[:photos])
    Location.all.with_attached_photos
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
    end
    @reviews = @location.reviews.order("created_at DESC")
    @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
  end

    def search

    end
  end
