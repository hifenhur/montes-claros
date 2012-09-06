class OShopping < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:conteudo, :imagem, :subtitulo]
  
  attr_accessible :conteudo, :imagem, :subtitulo
  mount_uploader :imagem, ImageUploader
  has_many :shopping_comments
end
