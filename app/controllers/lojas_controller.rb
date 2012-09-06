class LojasController < InheritedResources::Base
	def show
		@categorias = CategoriaLoja.all
		@loja = Loja.find(params[:id])
	end

	def index
		@categorias = CategoriaLoja.order('created_at DESC').page(params[:page]).per(5)
		@categorias_menu = CategoriaLoja.order('nome ASC')

		
	end
end
