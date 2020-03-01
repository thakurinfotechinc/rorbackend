class CreateYogs < ActiveRecord::Migration[6.0]
  def change
    create_table :yogs do |t|
      t.string :title
      t.string :description_en
      t.string :description_hi
      t.string :image_path

      t.timestamps
    end
  end
end
