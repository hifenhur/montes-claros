ActiveAdmin.register Loja  do
	menu :parent => "Lojas"
	form do |f|
		f.inputs
		f.buttons
	end
  	
  	index do
	  	column :id
	  	column :nome
	  	column :telefone
	  	column "criado em",:created_at
	  	default_actions
	  end
end
