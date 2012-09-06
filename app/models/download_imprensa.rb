class DownloadImprensa < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:mes, :titulo]
  
  attr_accessible :arquivo, :mes, :titulo
  mount_uploader :arquivo, ImageUploader
end
