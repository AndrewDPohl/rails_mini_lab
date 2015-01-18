Rails.application.routes.draw do
  get '/login', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/sign_up', to: 'users#new', as: "sign_up"

  resources :users

  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'

  get 'articles/index'

  root to: 'articles#index'

  get 'articles/new'

  get 'articles/show'

  get 'articles/edit'

end
