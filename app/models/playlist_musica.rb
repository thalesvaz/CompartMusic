class PlaylistMusica < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :musica
end
