class Usuario < ActiveRecord::Base
  attr_accessible :ip, :votou, :filme_id
  belongs_to :filme
end
