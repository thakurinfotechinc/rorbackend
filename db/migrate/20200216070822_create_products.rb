class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.numeric :price
      t.string :category
      t.string :subcategory
      t.string :seller

      t.timestamps
    end
  end
end
