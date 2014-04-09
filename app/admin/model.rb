ActiveAdmin.register Model do
  permit_params :name, :brand_id

  index do
    selectable_column
    column :id, sortable: :id do |model|
      model.brand.name
    end
    column :name
    actions
  end

end
