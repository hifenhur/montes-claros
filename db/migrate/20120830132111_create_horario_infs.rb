class CreateHorarioInfs < ActiveRecord::Migration
  def change
    create_table :horario_infs do |t|
      t.references :horario
      t.string :nome
      t.string :informacao

      t.timestamps
    end
    add_index :horario_infs, :horario_id
  end
end
