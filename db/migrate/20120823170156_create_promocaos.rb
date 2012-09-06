class CreatePromocaos < ActiveRecord::Migration
  def change
    create_table :promocaos do |t|
      t.string :titulo
      t.text :descricao
      t.text :conteudo
      t.string :image
      t.string :url_youtube

      t.timestamps
    end
  end
end
