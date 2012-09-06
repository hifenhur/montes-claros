class LojaAlimentacaosController < InheritedResources::Base
	def show
		@categoria_alimentacaos = CategoriaAlimentacao.all
		@loja_alimentacao = LojaAlimentacao.find(params[:id])
	end

	def index
		@categoria_alimentacaos = CategoriaAlimentacao.order('created_at DESC').page(params[:page]).per(5)
		@categorias_menu = CategoriaAlimentacao.order('nome ASC')
	end

	
end
