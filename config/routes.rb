Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/homes/about'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
