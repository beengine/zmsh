Rails.application.routes.draw do
  resources :pages, path: '/', except: :index
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/:id', to: 'pages#show'
end
