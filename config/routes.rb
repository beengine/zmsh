Rails.application.routes.draw do
  resources :events
  mount Ckeditor::Engine => '/ckeditor'
  resource :session, only: [:create, :destroy]
  get '/login', to: 'sessions#new'
  resources :pages, path: '/' do
    get :admin, on: :collection
    get :sitemap, on: :collection
  end
  root 'pages#index'
end
 