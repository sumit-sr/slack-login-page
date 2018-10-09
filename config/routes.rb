Rails.application.routes.draw do

  root 'dashboard#landing'

  get 'home', to: 'dashboard#home', as: :home
  get 'signup', to: 'dashboard#signup', as: :signup

  devise_for :users

end
