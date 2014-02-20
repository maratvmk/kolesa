class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.belongs_to :city
    	t.belongs_to :user
    	t.belongs_to :model
    	t.belongs_to :brand

      t.integer :price
      t.boolean :transmission
      t.boolean :wheel
      t.integer :year

      t.timestamps
    end
  end
end
