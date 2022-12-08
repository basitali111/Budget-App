Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash_screen#index"
  resources :categories, only: [:index, :new, :create, :show, :edit, :destroy] do
    resources :procedures, only: [:new, :create, :destroy]
  end
end
