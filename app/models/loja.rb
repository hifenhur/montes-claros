class Loja < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:descricao, :foto, :nome, :telefone]

  attr_accessible :descricao, :foto, :nome, :telefone, :categoria_loja_id
  validates :telefone, :length => { :maximum => 14 }
  mount_uploader :foto, ImageUploader
  belongs_to :categoria_loja

  
end
