class CreateMercados < ActiveRecord::Migration
  def change
    create_table :mercados do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
