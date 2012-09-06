Shopping::Application.routes.draw do


  get "search/index"

  get "localizacao" => 'localizacao#index'
 
  resources :newsletters

  resources :imprensas

  resources :horario_infs

  resources :lazers

  resources :servicos

  resources :curriculos

  resources :comercio_galeries

  resources :informacaos

  resources :o_shoppings do
    resources :shopping_comments
  end

  resources :ingressos

  resources :categoria_alimentacaos

  resources :loja_alimentacaos

  resources :categoria_lojas

  resources :lojas

  resources :promocaos

  resources :horaxes

  resources :comercializacaos

  resources :horarios

  resources :filmes do
    resources :salas
    resources :usuarios
    resources :comentario_filmes
  end

  resources :events

  resources :notices

  get "home/index"
  get "sobre" => 'o_shoppings#index'
  get 'aumentar/:id' => 'filmes#add_count', :as => :aumentar


  get "horario/criar_horario"

  

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
