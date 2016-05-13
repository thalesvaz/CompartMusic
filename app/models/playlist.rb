class Playlist < ActiveRecord::Base
	has_many :playlist_musicas
	has_many :musicas
end
