class CentersController < ApplicationController
  layout @centers
  def index
    @centers = Center.all
    Center.order('id ASC').reorder('name DESC')
    #@centers = Center.paginate(page: params[:page])
    @centers = Center.paginate(page: params[:page], per_page: 2)

  end
end
