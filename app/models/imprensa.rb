class Imprensa < ActiveRecord::Base
  attr_accessible :conteudo, :imagem
  mount_uploader :imagem, ImageUploader
end
