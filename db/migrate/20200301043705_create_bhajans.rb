class CreateBhajans < ActiveRecord::Migration[6.0]
  def change
    create_table :bhajans do |t|
      t.string :title
      t.string :url
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
