ActiveAdmin.register Filme do
  menu :parent => "Cinema"
  form :partial => "form"

  index do
  	column :titulo
  	column "criado em",:created_at
  	default_actions
  end


end
