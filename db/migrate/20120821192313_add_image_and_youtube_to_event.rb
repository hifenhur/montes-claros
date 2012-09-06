class AddImageAndYoutubeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :image, :string
    add_column :events, :url_youtube, :string
  end
end
