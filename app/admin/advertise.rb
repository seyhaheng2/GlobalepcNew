ActiveAdmin.register Advertise do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :name, :image, :category_id
  index do
    column :id
    column :name 
    column :image do |img|
      image_tag img.image,size: "150x100"
    end
    column :category
    actions
  end


end
