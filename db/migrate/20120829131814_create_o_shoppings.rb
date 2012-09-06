class CreateOShoppings < ActiveRecord::Migration
  def change
    create_table :o_shoppings do |t|
      t.string :subtitulo
      t.string :imagem
      t.text :conteudo

      t.timestamps
    end
  end
end
