json.array!(@musicas) do |musica|
  json.extract! musica, :id, :nome, :tamanho, :genero, :artista, :album, :usuario_id
  json.url musica_url(musica, format: :json)
end
