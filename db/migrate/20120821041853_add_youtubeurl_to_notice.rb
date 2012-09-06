class AddYoutubeurlToNotice < ActiveRecord::Migration
  def change
    add_column :notices, :url_youtube, :string
  end
end
