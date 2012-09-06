class SearchController < ApplicationController
  def index
  	@filmes = Filme.all
  	@results = PgSearch.multisearch(params[:search])



  end
end
