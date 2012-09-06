class CreateLazers < ActiveRecord::Migration
  def change
    create_table :lazers do |t|
      t.string :imagem
      t.text :descricao

      t.timestamps
    end
  end
end
