class CreateIngressos < ActiveRecord::Migration
  def change
    create_table :ingressos do |t|
      t.string :nome
      t.string :meia
      t.string :inteira

      t.timestamps
    end
  end
end
