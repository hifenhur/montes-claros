class CreateDownloadImprensas < ActiveRecord::Migration
  def change
    create_table :download_imprensas do |t|
      t.string :titulo
      t.string :mes
      t.string :arquivo

      t.timestamps
    end
  end
end
