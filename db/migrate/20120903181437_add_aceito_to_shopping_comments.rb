class AddAceitoToShoppingComments < ActiveRecord::Migration
  def change
    add_column :shopping_comments, :aceito, :boolean
  end
end
