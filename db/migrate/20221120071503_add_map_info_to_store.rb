class AddMapInfoToStore < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :address2, :string
    add_column :stores, :opening_hours2, :string
    add_column :stores, :latitude, :float
    add_column :stores, :longitude, :float
  end
end
