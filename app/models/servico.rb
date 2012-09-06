class Servico < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:descricao, :horario, :localizacao, :nome, :telefone, :imagem]
  attr_accessible :descricao, :horario, :localizacao, :nome, :telefone, :imagem
  mount_uploader :imagem, ImageUploader
end
