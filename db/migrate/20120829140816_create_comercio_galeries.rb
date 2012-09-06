class CreateComercioGaleries < ActiveRecord::Migration
  def change
    create_table :comercio_galeries do |t|
      t.string :image
      t.references :comercializacao

      t.timestamps
    end
    add_index :comercio_galeries, :comercializacao_id
  end
end
