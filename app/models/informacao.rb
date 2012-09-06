class Informacao < ActiveRecord::Base
  attr_accessible :assunto, :email, :mensagem, :nome, :nome_empresa, :telefone
end
