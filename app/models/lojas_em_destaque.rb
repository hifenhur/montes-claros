class LojasEmDestaque < ActiveRecord::Base
  attr_accessible :imagem, :nome, :link
  mount_uploader :imagem, ImageUploader
end
