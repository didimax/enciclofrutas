class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :sobrenome
      t.string :data_nasc
      t.string :genero
      t.string :senha
      t.string :email

      t.timestamps
    end
  end
end
