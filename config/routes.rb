Rails.application.routes.draw do
  resource :session, only: [:create, :destroy]
  get '/login', to: 'sessions#new'
  get '/pages', to: 'pages#index'
  resources :pages, path: '/', except: :index
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/:id', to: 'pages#show'
end
