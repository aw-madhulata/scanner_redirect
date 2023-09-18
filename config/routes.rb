Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "custom_sessions" }
  get "/profile/:user_id" => "home#profile"
  get "/scanner_page" => "home#scanner_page"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  namespace :api do 
    namespace :v1 do 
      get "login" => "users#login"
      get "scanner/:token" => "users#scanner", as: :scanner
    end 
  end 
end
