class Filme < ActiveRecord::Base
    include PgSearch
  multisearchable :against => [:elenco, :sinopse, :titulo, :trailer, :genero, :classificacao]

  attr_accessible :elenco, :imagem, :presenca, :sinopse, :titulo, :trailer, :salas_attributes, :genero, :classificacao, :comentario_filmes_attributes, :homeimage, :home_slider
  mount_uploader :imagem, ImageUploader
  mount_uploader :homeimage, ImageUploader
  has_many :salas
  has_many :usuarios
  has_many :comentario_filmes
  accepts_nested_attributes_for :salas, allow_destroy: true
  accepts_nested_attributes_for :comentario_filmes, allow_destroy: true

  def to_s
  	"#{titulo}"
  end



  

  

end
