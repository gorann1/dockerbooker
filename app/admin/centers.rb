ActiveAdmin.register Center do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :zone_id, :country_id, :region_id, :name, :address, :add_address, :city, :contact, :phone, :add_phone, :postalcode, :mobile, :add_mobile, :email, :add_email, :web, :add_web, :desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:zone_id, :country_id, :region_id, :name, :address, :add_address, :city, :contact, :phone, :add_phone, :postalcode, :mobile, :add_mobile, :email, :add_email, :web, :add_web, :desc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    id_column
    column :Name do |center|
      truncate(center.name, length: 50)
    end
    column :Contact do |center|
      truncate(center.desc, length: 50)
    end
    column :City do |center|
      truncate(center.city, length: 50)
    end
    actions
  end


  permit_params :zone_id, :country_id, :region_id, :name, :address, :add_address, :city, :contact, :phone, :add_phone, :postalcode, :mobile, :add_mobile, :new_images, :email, :add_email, :web, :add_web, :desc

  form do |f| #This is formtastic form builder
  f.semantic_errors # shows errors on :base
  f.inputs          # builds an input field for every attribute
    f.input :new_images, as: :file, input_html: { multiple: true }
  f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
