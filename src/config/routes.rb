Rails.application.routes.draw do

  resources :roles
  root controller: :home, action: :home
  devise_for :users
  resources :users
  resources :categories
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts # localhost:3000/posts

  default_url_options :host => "localhost:3000"


  get '/404', to: 'erreurs#page_introuvable'
  get '/422', to: 'erreurs#unacceptable'
  get '/500', to: 'erreurs#erreur_interne'

end
