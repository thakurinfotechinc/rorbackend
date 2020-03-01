class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :song_url
      t.string :string
      t.string :song_img
      t.string :song_type

      t.timestamps
    end
  end
end
