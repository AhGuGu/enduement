Rails.application.routes.draw do


    get "register"  => 'users#new'
    post "register" => "users#create"
    get "login" => "sessions#new"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"
    resources :users
    root "sessions#new"
    get "profile" => "users#show"
    resources :unit_trusts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
