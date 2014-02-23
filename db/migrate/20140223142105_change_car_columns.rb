class ChangeCarColumns < ActiveRecord::Migration
  def up
  	change_table :cars do |t|
  		t.change :transmission, :string
  		t.change :wheel, :string
  	end
  end

  def down
  	change_table :cars do |t|
  		t.change :transmission, :boolean
  		t.change :wheel, :boolean
  	end
  end
end
