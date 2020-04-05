Rails.application.routes.draw do
  get 'sign_up' , to: 'pages#sign_up' 
  get 'sign_in' , to: 'pages#sign_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'programmers#index'
  resources :programmers , :projects

  # get 'programmers', to: 'programmers#index'
  # get 'programmers/:id', to: 'programmers#show', as: :programmer
end
