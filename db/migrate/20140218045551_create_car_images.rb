class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
    	t.belongs_to :car
      t.string :image
    end
  end
end
