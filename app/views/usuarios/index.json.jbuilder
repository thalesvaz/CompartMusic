json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :iduser, :username, :senha, :email, :endereco
  json.url usuario_url(usuario, format: :json)
end
