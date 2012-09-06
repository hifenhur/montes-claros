class HorarioInf < ActiveRecord::Base
  belongs_to :horario
  attr_accessible :informacao, :nome, :horario_id
end
