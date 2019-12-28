Rails.application.routes.draw do

  devise_for :users
  resources :users
  get "users/:id" => "users#show"
  get "users/:id/edit" =>"users#edit"
  post "users/:id/update" =>"users#edit"

  #投稿
  resources :comments
  get "comments" => "comments#index"
  get "comments/:id" => "comments#show"
  get "comments/new" =>"comments#new"
  get "comments/:id/edit" => "comments#edit"
  delete "commnets/:id" => "comments#destroy"
  post "comments/:id" => "comments#update"


  get "/" => "home#top"

  #プロフィール
  get "me" => "me#index"
  get "me/edit" => "me#edit"
  patch "me/update" => "me#update"

end
