ActiveAdmin.register Event, :as => "Evento" do
  menu :parent => "Administrar Noticias"
  index do
  	column :titulo
  	column :descricao
  	column "criado em",:created_at
  	default_actions
  end

  form do |f|
      f.inputs "Detalhes" do
        f.input :titulo
        f.input :image
        f.input :url_youtube
        f.input :descricao, :input_html => {:class => "ckeditor"}
      end
      f.inputs "Conteudo" do
        f.input :conteudo, :input_html => {:class => "ckeditor"}
        

      end
      f.buttons
    end
 
end
