Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated do
      root to: 'categorys#index'
    end
  
    unauthenticated do
      root to: 'splash_screen#index', as: 'unauthenticated_user_root'
    end
  end
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    # Defines the root path route ("/")
    # root "articles#index"
  
    resources :users, only: %i[index show]
    resources :categorys, only: %i[index show new create destroy] do
      resources :procedures, only: %i[index show new create destroy]
    end
end
