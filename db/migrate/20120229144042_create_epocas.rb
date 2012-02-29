class CreateEpocas < ActiveRecord::Migration
  def change
    create_table :epocas do |t|
      t.string :estacao_do_ano

      t.timestamps
    end
  end
end
