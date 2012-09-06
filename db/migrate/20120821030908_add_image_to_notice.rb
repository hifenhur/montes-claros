class AddImageToNotice < ActiveRecord::Migration
  def change
    add_column :notices, :image, :string
  end
end
