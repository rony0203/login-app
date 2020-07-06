Rails.application.routes.draw do
  get 'users/new'
  post 'users/create'
  post 'authorisation/login'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
