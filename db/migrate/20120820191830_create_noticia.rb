class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.text :descricao
      t.text :conteudo

      t.timestamps
    end
  end
end
