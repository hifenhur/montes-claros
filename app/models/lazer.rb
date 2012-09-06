class Lazer < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:descricao]

  attr_accessible :descricao, :imagem
  mount_uploader :imagem, ImageUploader
end
