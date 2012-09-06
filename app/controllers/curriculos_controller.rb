class CurriculosController < InheritedResources::Base
	def create
    @curriculo = Curriculo.new(params[:curriculo])
    respond_to do |format|
      if @curriculo.save
        format.js
      end
    end
  end
end
