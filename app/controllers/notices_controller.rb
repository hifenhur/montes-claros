class NoticesController < InheritedResources::Base
	def show
		@notice = Notice.find(params[:id])
		@notices = Notice.all
		@filmes = Filme.all
	end
	def index
		@notices = Notice.all
		@filmes = Filme.all
	end
end
