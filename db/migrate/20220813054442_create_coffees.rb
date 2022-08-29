class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :producing_area

      t.timestamps
    end
  end
end
