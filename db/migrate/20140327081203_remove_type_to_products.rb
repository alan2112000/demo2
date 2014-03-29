class RemoveTypeToProducts < ActiveRecord::Migration
  def change
	  add_column :products , :category , :string
	  remove_column :products, :type 
  end
end
