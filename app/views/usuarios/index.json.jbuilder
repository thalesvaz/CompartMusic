json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :username, :senha, :nome, :email, :endereco
  json.url usuario_url(usuario, format: :json)
end
