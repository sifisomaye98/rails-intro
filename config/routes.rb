Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  #get "restaurants", to: "restaurants#index", as: :restaurants
  #post "restaurants", to: "restaurants#create"
  #get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  #get "restaurants/:id", to: "restaurants#show", as: :restaurant
  #get "restaurants/:id/edit", to: "restaurants#edit"
  #patch "restaurants/:id", to: "restaurants#update"
  #delete "restaurants/:id", to: "restaurants#destroy"
  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants do
    collection do
      get :top
    end
  end
end
