class AddHomesliderToFilmes < ActiveRecord::Migration
  def change
    add_column :filmes, :home_slider, :boolean
  end
end
