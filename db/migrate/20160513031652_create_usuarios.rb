class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :senha
      t.string :nome
      t.string :email
      t.string :endereco

      t.timestamps null: false
    end
  end
end
