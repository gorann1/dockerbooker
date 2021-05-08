class CentersController < ApplicationController
  layout @centers
  def index
    Center.order('id ASC').reorder('name DESC')
    #@centers = Center.paginate(page: params[:page])
    @q = Center.ransack(params[:q])
    @centers = @q.result.paginate(page: params[:page], per_page: 9)

  end
end
