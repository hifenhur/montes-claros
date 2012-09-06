class Comercializacao < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:conteudo, :imagem, :subtitulo]
  
  attr_accessible :conteudo, :imagem, :subtitulo
  mount_uploader :imagem, ImageUploader
  has_many :comercio_galeries
end
