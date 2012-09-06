ActiveAdmin.register Promocao, :as => "Promocoes" do
  menu :parent => "Administrar Noticias"
  index do
  	column :titulo
  	column :descricao
  	column "criado em",:created_at
  	default_actions
  end
  
end
