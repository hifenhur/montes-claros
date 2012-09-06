class CategoriaAlimentacao < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:nome]
  attr_accessible :nome
  has_many :loja_alimentacaos

  
  def to_s
  	"#{nome}"
  end
end
