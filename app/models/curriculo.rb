class Curriculo < ActiveRecord::Base
  attr_accessible :area_de_atuacao, :cep, :cidade, :complemento, :descricao, :documento, :email, :endereco, :estado, :nome, :telefone
  mount_uploader :documento, ImageUploader
end
