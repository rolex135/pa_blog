Rails.application.routes.draw do

  root 'posts#index'

  get 'about' => 'about#about'

  resources :posts do
    resources :comments, only: [:create]
  end
end
