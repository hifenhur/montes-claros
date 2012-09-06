# encoding: utf-8
ActiveAdmin.register DownloadImprensa, :as => 'Download' do
  menu :parent => 'Imprensa'
  mes = ["Janeiro","Fevereiro", "Março" , "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro","Novembro", "Dezembro"]

  form do |f|
  	f.inputs "Arquivo para download" do 
		f.input :titulo
		f.input :arquivo
		f.input :mes, :as => :select, :collection => mes
	end
		f.buttons
  end
  
end
