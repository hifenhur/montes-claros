class LojaAlimentacao < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:descricao, :image, :nome, :telefone, :piso]

  attr_accessible :categoria_alimentacao, :descricao, :image, :nome, :telefone, :categoria_alimentacao_id, :piso
  validates :telefone, :length => { :maximum => 14 }
  mount_uploader :image, ImageUploader
  belongs_to :categoria_alimentacao
end
