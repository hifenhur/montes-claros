class Sala < ActiveRecord::Base
  attr_accessible :fh1, :fh2, :fh3, :fh4, :fh5, :legendado, :nome, :sh1, :sh2, :sh3, :sh4, :sh5, :tresD, :filme_id
  belongs_to :filme
  
end
