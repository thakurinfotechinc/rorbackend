json.extract! song, :id, :title, :song_url, :string, :song_img, :song_type, :created_at, :updated_at
json.url song_url(song, format: :json)
