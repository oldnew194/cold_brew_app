class CreateArticleCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :article_coffees do |t|
      t.references :article, null: false, foreign_key: true
      t.references :coffee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
