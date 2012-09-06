ActiveAdmin.register CategoriaAlimentacao do
  menu :parent => "Pc de Alimentacao"

  index do
  	column :id
  	column :nome
  	column "criado em",:created_at
  	default_actions
  end
end
