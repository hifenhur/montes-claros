class AddFilmeToUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :ip
      t.references :filme
      t.boolean :votou

      t.timestamps
    end
  end
end
