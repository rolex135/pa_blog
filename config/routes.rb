Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'posts#index'

  get 'about' => 'about#about'

  resources :posts do
    resources :comments, only: [:create]
  end
end
