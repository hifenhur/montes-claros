class CreateLojasEmDestaques < ActiveRecord::Migration
  def change
    create_table :lojas_em_destaques do |t|
      t.string :nome
      t.string :imagem
      t.string :link

      t.timestamps
    end
  end
end
