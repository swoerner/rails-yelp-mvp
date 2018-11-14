Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[index show create new] do
   resources :reviews, only: %i[new create]
  end

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # POST "restaurants/:restaurant_id/reviews", to: "reviews#create"
  # same as:

root to: 'restaurants#index'

end
