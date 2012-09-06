class CreateShoppingComments < ActiveRecord::Migration
  def change
    create_table :shopping_comments do |t|
      t.string :nome
      t.string :email
      t.text :comentario
      t.references :o_shopping

      t.timestamps
    end
    add_index :shopping_comments, :o_shopping_id
  end
end
