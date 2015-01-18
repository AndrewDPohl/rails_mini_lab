Rails.application.routes.draw do
  get 'sites/index'

  get '/sites/contact', to: 'sites#contact', as: 'contact'

  get '/sites/about', to: 'sites#about', as: 'about'

  get '/login', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/sign_up', to: 'users#new', as: 'sign_up'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  
  # get 'articles/index'

  root to: 'articles#index'

  get '/articles', to: 'articles#index', as: 'articles'

  get '/articles/new', to: 'articles#new', as: 'new_article'

  post '/articles', to: 'articles#create'

  get 'articles/:id', to: 'articles#show', as: 'article'

  get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'

  patch '/articles/:id', to: 'articles#update'

  patch '/articles/:id/edit', to: 'articles#update'

  delete '/articles/:id', to: 'articles#destroy'

  # get 'sessions/new'

  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/edit'

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

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
