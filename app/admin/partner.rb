ActiveAdmin.register Partner do

  permit_params :name, :icon_url, :url, :description, partner_category_ids: []

  show do
    attributes_table do
      row :name
      row :icon_url
      row :url
      row :description
      table_for partner.partner_categories do
        column "Categories" do |c|
          link_to c.name, [ :admin, c ]
        end
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Partner" do
      f.input :name
      f.input :icon_url
      f.input :url
      f.input :description
      f.input :partner_categories, :as => :check_boxes
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
