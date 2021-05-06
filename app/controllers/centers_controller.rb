class CentersController < ApplicationController
  layout @centers
  def index
    @centers = Center.all
    Center.order('id ASC').reorder('name DESC')
  end
end
