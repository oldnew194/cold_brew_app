class AddTasteMeterToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :rate, :float
  end
end
