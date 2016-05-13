class CreateMusicas < ActiveRecord::Migration
  def change
    create_table :musicas do |t|
      t.string :nome
      t.string :tamanho
      t.string :genero
      t.string :artista
      t.string :album
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
