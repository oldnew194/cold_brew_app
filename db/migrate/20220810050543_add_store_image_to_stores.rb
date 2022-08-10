class AddStoreImageToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :store_image, :string
  end
end
