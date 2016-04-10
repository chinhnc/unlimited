Rails.application.routes.draw do
  resources :images

  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
  end

  devise_for :users
  root to: "static_pages#start"
  get 'home' => 'static_pages#home'
end
