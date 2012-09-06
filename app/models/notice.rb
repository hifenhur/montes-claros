class Notice < ActiveRecord::Base

	include PgSearch
  multisearchable :against => [:conteudo, :descricao, :titulo, :image, :url_youtube]
  
  attr_accessible :conteudo, :descricao, :titulo, :image, :url_youtube
  validates :descricao, :length => { :maximum => 1000 }
  mount_uploader :image, ImageUploader


end
