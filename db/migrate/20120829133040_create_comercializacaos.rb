class CreateComercializacaos < ActiveRecord::Migration
  def change
    create_table :comercializacaos do |t|
      t.string :subtitulo
      t.string :imagem
      t.text :conteudo

      t.timestamps
    end
  end
end
