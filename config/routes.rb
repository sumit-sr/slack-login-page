Rails.application.routes.draw do

  root 'dashboard#landing'

  get 'home', to: 'dashboard#home', as: :home
  match 'signup', to: 'dashboard#signup', as: :signup, via: [:get, :post]

  devise_for :users

end
