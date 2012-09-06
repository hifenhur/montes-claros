class HomeController < ApplicationController
  def index
  	@filmes = Filme.where("home_slider = TRUE").limit(3)
  	@eventos = Event.order("created_at DESC").limit(4)
  end
end
