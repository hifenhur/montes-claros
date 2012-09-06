class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.string :nome_do_shopping
      t.string :endereco
      t.string :cep
      t.string :email_sac
      t.string :telefone

      t.timestamps
    end
  end
end
