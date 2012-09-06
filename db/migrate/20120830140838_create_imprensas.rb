class CreateImprensas < ActiveRecord::Migration
  def change
    create_table :imprensas do |t|
      t.string :imagem
      t.text :conteudo

      t.timestamps
    end
  end
end
