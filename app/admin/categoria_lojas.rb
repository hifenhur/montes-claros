ActiveAdmin.register CategoriaLoja do
  menu :parent => "Lojas"

  index do
  	column :id
  	column :nome
  	column "criado em",:created_at
  	default_actions
  end
end
