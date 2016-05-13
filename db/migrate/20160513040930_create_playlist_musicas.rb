class CreatePlaylistMusicas < ActiveRecord::Migration
  def change
    create_table :playlist_musicas do |t|
      t.references :playlist, index: true, foreign_key: true
      t.references :musica, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
