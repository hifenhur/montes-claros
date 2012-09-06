class ChangeFilme < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.text :elenco
      t.text :sinopse
      t.string :trailer
      t.integer :presenca
      t.string :imagem
      t.string :genero
      t.string :classificacao

      t.timestamps
    end
  end
end
