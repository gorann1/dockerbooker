class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
    @types = Location.distinct.pluck(:type)
    @countries = Location.distinct.pluck(:country)
    @regions = Location.distinct.pluck(:region)
    @categories = Location.distinct.pluck(:category)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  private

  def search_params
    params.require(:search).permit(:country, :type, :region, :category)
  end
end
