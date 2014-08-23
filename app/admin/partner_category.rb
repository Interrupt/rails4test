ActiveAdmin.register PartnerCategory do

  permit_params :name, :status, partner_ids: []

  show do
    attributes_table do
      row :name
      row :status
      table_for partner_category.partners do
        column "Partners" do |p|
          link_to p.name, [ :admin, p]
        end
      end
    end
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
