class ComercioGalery < ActiveRecord::Base
  belongs_to :comercializacao
  attr_accessible :image, :comercializacao_id
  mount_uploader :image, ImageUploader
end
