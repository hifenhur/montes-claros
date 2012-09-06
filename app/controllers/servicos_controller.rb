class ServicosController < InheritedResources::Base
	def index
		@filmes = Filme.all
		@servicos = Servico.all
	end
end
