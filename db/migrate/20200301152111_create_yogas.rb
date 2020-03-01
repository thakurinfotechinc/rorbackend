class CreateYogas < ActiveRecord::Migration[6.0]
  def change
    create_table :yogas do |t|
      t.string :title
      t.string :description_en
      t.string :description_hi
      t.string :image_path
      t.string :yoga_type

      t.timestamps
    end
  end
end
