class ShoppingComment < ActiveRecord::Base
  attr_accessible :comentario, :email, :nome, :o_shopping_id, :aceito
  belongs_to :o_shopping
  
end
