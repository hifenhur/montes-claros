class AddImageToFilmes < ActiveRecord::Migration
  def change
    add_column :filmes, :image, :string
  end
end
