class SalasController < InheritedResources::Base
	def destroy
	@filme = Filme.find(params[:id])

    respond_to do |format|
      format.html { redirect_to edit_admin_filme_path(@filme) }
      format.json { head :no_content }
    end
  end
end
