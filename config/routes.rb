Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "cocktails", to: "cocktail#index"
  post "cocktails", to: "cocktail#create"
  get "cocktails/new", to: "cocktail#new", as: :new
  get "cocktails/:id", to: "cocktail#show", as: :show
  get "doses", to: "dose#index"
  delete "doses/:id", to: "dose#destroy", as: :destroy
  get "doses/:id", to: "dose#show"
  post "doses", to: "dose#create"
end
