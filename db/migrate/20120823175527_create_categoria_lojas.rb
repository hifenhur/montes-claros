class CreateCategoriaLojas < ActiveRecord::Migration
  def change
    create_table :categoria_lojas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
