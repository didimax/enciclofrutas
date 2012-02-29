class CreateVitaminas < ActiveRecord::Migration
  def change
    create_table :vitaminas do |t|
      t.string :nome
      t.string :beneficio

      t.timestamps
    end
  end
end
