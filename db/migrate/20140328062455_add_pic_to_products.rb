class AddPicToProducts < ActiveRecord::Migration
  def change
	  add_column :products , :pic , :string
  end
end
