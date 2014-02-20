class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.belongs_to :city
      t.string :avatar
      t.string :phone

      t.timestamps
    end
  end
end
