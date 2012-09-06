class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :nome
      t.string :fh1
      t.string :fh2
      t.string :fh3
      t.string :fh4
      t.string :fh5
      t.string :sh1
      t.string :sh2
      t.string :sh3
      t.string :sh4
      t.string :sh5
      t.boolean :legendado
      t.boolean :tresD
      t.references :filme

      t.timestamps
    end
  end
end
