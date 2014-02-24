class AddFieldsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :body_id, :integer
    add_column :cars, :volume, :decimal
    add_column :cars, :fuel, :string
    add_column :cars, :milage, :integer
    add_column :cars, :state, :string
    add_column :cars, :drive, :string
    add_column :cars, :customs, :boolean
    add_column :cars, :description, :text
    add_column :cars, :phone, :string
  end
end
