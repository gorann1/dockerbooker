class CentersController < ApplicationController
  layout @centers
  def index
    Center.order('id ASC').reorder('name DESC')
    #@centers = Center.paginate(page: params[:page])
    @q = Center.ransack(params[:q])
    @centers = @q.result.paginate(page: params[:page], per_page: 12)
    @custom_renderer = Class.new(WillPaginate::ActionView::LinkRenderer) do
      def container_attributes
        { class:"flex h-8 font-medium"}
      end
      def page_number(page)
        if page == current_page
          tag(:span, page, class: 'w-8 md:flex justify-center items-center hidden  cursor-pointer leading-5 transition duration-150 ease-in  border-t-2 border-green-300')
        else
          link(page, page, class: 'w-8 md:flex justify-center items-center hidden  cursor-pointer leading-5 transition duration-150 ease-in  border-t-2 border-transparent', rel: rel_value(page))
        end
      end
    end

  end
end
