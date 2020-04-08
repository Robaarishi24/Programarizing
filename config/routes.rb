Rails.application.routes.draw do
  devise_for :users
  get '/users/sign_in' , to: 'devise/sessions#new' 
  get '/users/sign_up' , to: 'devise/registrations#new' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'programmers#index'
  resources :programmers , :projects
  # get 'programmers', to: 'programmers#index'
  # get 'programmers/:id', to: 'programmers#show', as: :programmer
end
