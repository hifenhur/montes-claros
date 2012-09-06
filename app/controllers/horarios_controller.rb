class HorariosController < InheritedResources::Base
	def index
		@horario = Horario.first!
	end
end
