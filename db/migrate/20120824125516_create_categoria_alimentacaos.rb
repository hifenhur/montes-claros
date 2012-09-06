class CreateCategoriaAlimentacaos < ActiveRecord::Migration
  def change
    create_table :categoria_alimentacaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
