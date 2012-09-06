class InformacaosController < InheritedResources::Base
	def create
    @informacao = Informacao.new(params[:informacao])
    respond_to do |format|
      if @informacao.save
        format.html { redirect_to informacaos_path, alert: 'Sua Mensagem foi Enviada com Sucesso' }
        format.json { render json: @informacao, status: :created, location: @informacao }
      end
    end
  end
end
