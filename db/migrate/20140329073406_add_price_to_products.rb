class AddPriceToProducts < ActiveRecord::Migration
  def change
	  add_column :products , :price , :string
	  add_column :categories , :description , :string
  end
end
