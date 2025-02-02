Rails.application.routes.draw do
  resources :activities
  resources :signups
  resources :campers, only: [:index, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/campers', to: "campers#index"
  get '/campers/:id', to: "campers#show"
  post '/campers', to: "campers#create"

  get '/activities', to: "activities#index"
end
