class AddColumnToFilme < ActiveRecord::Migration
  def change
    add_column :filmes, :genero, :string
    add_column :filmes, :classificacao, :string
  end
end
