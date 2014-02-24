class CreateFuels < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :name
    end
  end
end
