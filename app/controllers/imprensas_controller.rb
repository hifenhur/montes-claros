# encoding: utf-8
class ImprensasController < InheritedResources::Base
	def index
		@imprensa = Imprensa.first!
		@downloadsJaneiro = DownloadImprensa.where("mes = 'Janeiro'")
		@downloadsFevereiro = DownloadImprensa.where("mes = 'Fevereiro'")
		@downloadsMarco = DownloadImprensa.where("mes = 'Março'")
		@downloadsAbril = DownloadImprensa.where("mes = 'Abril'")
		@downloadsMaio = DownloadImprensa.where("mes = 'Maio'")
		@downloadsJunho = DownloadImprensa.where("mes = 'Junho'")
		@downloadsJulho = DownloadImprensa.where("mes = 'Julho'")
		@downloadsAgosto = DownloadImprensa.where("mes = 'Agosto'")
		@downloadsSetembro = DownloadImprensa.where("mes = 'Setembro'")
		@downloadsOutubro = DownloadImprensa.where("mes = 'Outubro'")
		@downloadsNovembro = DownloadImprensa.where("mes = 'Novembro'")
		@downloadsDezembro = DownloadImprensa.where("mes = 'Dezembro'")
	end
end
