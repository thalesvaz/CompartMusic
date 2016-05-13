json.array!(@playlist_musicas) do |playlist_musica|
  json.extract! playlist_musica, :id, :playlist_id, :musica_id
  json.url playlist_musica_url(playlist_musica, format: :json)
end
