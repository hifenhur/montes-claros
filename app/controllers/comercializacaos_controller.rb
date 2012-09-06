class ComercializacaosController < InheritedResources::Base
	def index
		@info = Comercializacao.first!
	end
end
