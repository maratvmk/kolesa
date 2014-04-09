ActiveAdmin.register Brand do
  permit_params :name, :symbol
  
  index do
    selectable_column
    column :name
    actions
  end
  
end
