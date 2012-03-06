class CreateFrutas < ActiveRecord::Migration
  def change
    create_table :frutas do |t|
      t.string :nome
      t.string :nome_cientifico
      t.string :peso
      t.string :cor
      t.string :preco
      t.string :localizacao
      t.string :calorias
      t.string :informacao
      t.references :moderador
      t.references :epoca

      t.timestamps
    end
    add_index :frutas, :moderador_id
    add_index :frutas, :epoca_id
  end
end
