class Createlojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :foto
      t.text :descricao
      t.string :telefone
      t.references :categoria_loja

      t.timestamps
    end
  end
end
