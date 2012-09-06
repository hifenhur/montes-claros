class BannerImage < ActiveRecord::Base
  attr_accessible :imagem
  mount_uploader :imagem, ImageUploader
end
