class ComentarioFilme < ActiveRecord::Base
  belongs_to :filme
  attr_accessible :autorizado, :comentario, :email, :nome, :filme_id
end
