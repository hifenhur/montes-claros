class CreateLojaAlimentacaos < ActiveRecord::Migration
  def change
    create_table :loja_alimentacaos do |t|
      t.string :nome
      t.string :image
      t.text :descricao
      t.string :telefone
      t.string :piso
      t.references :categoria_alimentacao

      t.timestamps
    end
  end
end
