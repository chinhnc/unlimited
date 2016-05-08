Rails.application.routes.draw do

  get 'user/profile'

  get 'user/my_photo'

  resources :images
  resources :images do
    resources :comments
  end
  resources :comments
  resources :likes

  delete "delete" => "commnets#destroy"
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
  end
  get 'upload' => 'images#new'
  get 'user/:id' => "user#profile"
  get 'user/:id/photo' => "user#photo"
  get 'user/:id/follow' => "user#follow"
  devise_for :users
  root to: "static_pages#home"
  get 'home' => 'static_pages#home'
  get 'hot' => 'static_pages#hot'
  get 'recent_images' => 'static_pages#recent_images'
  post 'images/:id' => 'images#download'
  get 'search' => 'search#images_search'
  resources :relationships, only: [:create, :destroy]
  resources :user do
    member do
      get :following, :followers
    end
  end
end
