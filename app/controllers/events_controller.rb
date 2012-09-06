class EventsController < InheritedResources::Base
	def show
		@event = Event.find(params[:id])
		@events = Event.all
		@filmes = Filme.all
	end

	def index
		@filmes = Filme.all
		@events = Event.all
	end
end
