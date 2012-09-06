class CreateCurriculos < ActiveRecord::Migration
  def change
    create_table :curriculos do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :cep
      t.string :endereco
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.string :area_de_atuacao
      t.text :descricao
      t.string :documento

      t.timestamps
    end
  end
end
