class CentersController < ApplicationController
  def index
    @centers = Center.all
    Center.order('id ASC').reorder('name DESC')
  end
end
