class AddLongDesToProducts < ActiveRecord::Migration
  def change
	  add_column :products , :pic2 , :string
	  add_column :products , :pic3 , :string
	  add_column :products , :video_url , :string
	  add_column :products , :long_des  , :text  
  end
end
