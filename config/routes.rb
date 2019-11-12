Rails.application.routes.draw do
  devise_for :users
  resources :users
  get "users/:id" => "users#show"
  get "users/:id/edit" =>"users#edit"
  post "users/:id/update" =>"users#edit"

  resources :comments
  get "comments/:id" => "comments#show"
  get "comments/new" =>"comments#new"
  get 'message/create' => "message#create"


  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" =>"posts#update"
  post "posts/:id/destroy" =>"posts#destroy"
  get "posts/:id" => "posts#show"
  get "/" => "home#top"

  get "me" => "me#index"
  get "me/edit" => "me#edit"
  post "me/update" => "me#update"

  devise_for :mes, controllers: {
  confirmations: 'mes/confirmations',
  passwords:     'mes/passwords',
  registrations: 'mes/registrations',
  sessions:      'mes/sessions',

}
get "me/edit" => "mes/registrations#edit"
end
