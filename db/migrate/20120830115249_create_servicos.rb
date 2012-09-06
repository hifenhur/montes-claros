class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :nome
      t.string :imagem
      t.text :descricao
      t.string :horario
      t.string :localizacao
      t.string :telefone

      t.timestamps
    end
  end
end
