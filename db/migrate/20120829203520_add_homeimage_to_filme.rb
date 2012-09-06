class AddHomeimageToFilme < ActiveRecord::Migration
  def change
    add_column :filmes, :homeimage, :string
  end
end
