ActiveAdmin.register Location do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :zone_id, :country_id, :region_id, :type_id, :category_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :image, :desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:zone_id, :country_id, :region_id, :type_id, :category_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :image, :desc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    id_column
    column :Name do |location|
      truncate(location.name, length: 50)
    end
    column :Desc do |location|
      truncate(location.desc, length: 50)
    end
    column :master_image do |location|
      image_tag url_for(location.master_image.variant(resize_to_limit: [50,50]))
    end
    actions
  end


  permit_params :zone_id, :country_id, :region_id, :type_id, :category_id, :name, :lat, :lng, :gps, :city, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :master_image, :photos, :desc


  form do |f| #This is formtastic form builder
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
      f.input :photos, as: :file, input_html: { multiple: true }
     end
      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end




end
