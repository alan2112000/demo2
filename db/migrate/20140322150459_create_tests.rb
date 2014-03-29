class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
