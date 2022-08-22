Rails.application.routes.draw do
  resources :comments, only: [:create]
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    # authenticated :user do
        
    # end

    # unauthenticated :user do
    #   root to: 'devise/sessions#new', as: 'unauthenticated_root'
    # end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'posts#index'
end
