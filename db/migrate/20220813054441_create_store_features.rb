class CreateStoreFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :store_features do |t|
      t.references :store, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
