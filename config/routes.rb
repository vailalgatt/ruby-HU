Rails.application.routes.draw do

  resources :answers

  resources :questions

  root 'home#index'

  get '/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
