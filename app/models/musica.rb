class Musica < ActiveRecord::Base
  belongs_to :usuario
  has_many :playlist_musicas
  belongs_to :playlist
end
