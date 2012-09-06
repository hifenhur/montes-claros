class CreateComentarioFilmes < ActiveRecord::Migration
  def change
    create_table :comentario_filmes do |t|
      t.string :nome
      t.string :email
      t.text :comentario
      t.boolean :autorizado
      t.references :filme

      t.timestamps
    end
    add_index :comentario_filmes, :filme_id
  end
end
