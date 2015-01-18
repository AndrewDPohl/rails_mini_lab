Rails.application.routes.draw do
  
  get 'sessions/new'

  get '/login', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/sign_up', to: 'users#new', as: "sign_up"

  # resources :users

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: "users#new", as: "new_user"

  get "/users/:id", to: "users#show", as: "user"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  post "/users", to: "users#create"

  patch "/users/:id", to: "users#update"

  delete "/users/:id", to: "users#destroy"

  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'

  get '/articles/index', to: 'articles#index', as: 'articles'

  root to: 'articles#index'

  get '/articles/new', to: 'articles#new', as: 'new_article'

  post '/articles', to: 'articles#create'

  get '/articles/:id', to: 'articles#show', as: 'article'

  get '/articles/:id/edit', to: 'article#edit', as: 'edit_article'

  patch '/articles/:id/edit', to: 'articles#update'

  delete '/articles/:id', to: 'articles#destroy'

end
