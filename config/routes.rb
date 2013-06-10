Norrington::Application.routes.draw do
  
  post '/login' => 'sessions#create'
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'
  post '/admin/promote/:id' => 'admin/users#promote', as: "admin_promote_user"
  post '/admin/demote/:id' => 'admin/users#demote', as: "admin_demote_user"

  get '/machines/search' => 'machines#search', as: 'machine_search'

  delete '/uninstall/:id' => 'licenses#uninstall', as: "uninstall"
  post '/install' => 'licenses#install', as: "install"

  resources :licenses

  resources :machines

  namespace :admin do
    resources :users
    resources :machines
    resources :licenses
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
