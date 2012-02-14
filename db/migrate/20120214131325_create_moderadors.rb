class CreateModeradors < ActiveRecord::Migration
  def change
    create_table :moderadors do |t|
      t.string :nome
      t.string :sobrenome
      t.string :senha
      t.string :pais
      t.string :cidade
      t.string :genero
      t.string :data_nasc
      t.string :cpf
      t.string :rg
      t.string :email

      t.timestamps
    end
  end
end
