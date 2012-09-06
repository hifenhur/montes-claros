class CategoriaLoja < ActiveRecord::Base
	include PgSearch
  multisearchable :against => [:nome]
  attr_accessible :nome
  has_many :lojas

  
  def to_s
  	"#{nome}"
  end
  
end
