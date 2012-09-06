class PromocaosController < InheritedResources::Base
	def show
		@promocao = Promocao.find(params[:id])
		@promocaos = Promocao.all
		@filmes = Filme.all
	end

	def index
		@filmes = Filme.all
		@promocaos = Promocao.all
	end
end
