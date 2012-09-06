class Promocao < ActiveRecord::Base
  attr_accessible :conteudo, :descricao, :image, :titulo, :url_youtube
  validates :descricao, :length => { :maximum => 1000 }
  mount_uploader :image, ImageUploader
end
