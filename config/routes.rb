Rails.application.routes.draw do
  devise_for :users

  resources :post_images, only: [:new, :index, :show]

  root to: "homes#top"
  get '/homes/about' => "homes#about", as: "about"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
