class ChangeHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.time :hora_inicio
      t.references :filme
      t.references :sala

      t.timestamps
    end
    add_index :horarios, :filme_id
    add_index :horarios, :sala_id
  end
end
