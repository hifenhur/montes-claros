class CreateBannerImages < ActiveRecord::Migration
  def change
    create_table :banner_images do |t|
      t.string :imagem

      t.timestamps
    end
  end
end
