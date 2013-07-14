Bloccit::Application.routes.draw do

  get "topics/index"

  get "topics/new"

  get "topics/show"

  get "topics/edit"

  get "index/new"

  get "index/show"

  get "index/edit"

  devise_for :users

  resources :topics do
    resources :posts, except: [:index]
  end

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'

end