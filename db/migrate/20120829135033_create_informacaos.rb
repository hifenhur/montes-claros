class CreateInformacaos < ActiveRecord::Migration
  def change
    create_table :informacaos do |t|
      t.string :nome
      t.string :nome_empresa
      t.string :telefone
      t.string :email
      t.string :assunto
      t.text :mensagem

      t.timestamps
    end
  end
end
