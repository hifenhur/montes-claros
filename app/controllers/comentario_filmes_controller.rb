class ComentarioFilmesController < InheritedResources::Base
	def create
	    @filme = Filme.find(params[:filme_id])
	    @comentario_filme = @filme.comentario_filmes.create(params[:comentario_filme])
	    redirect_to filme_path(@filme)
	  end
end
