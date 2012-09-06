class ChangeNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :titulo
      t.string :image
      t.string :url_youtube
      t.text :descricao
      t.text :conteudo

      t.timestamps
    end
  end
end
