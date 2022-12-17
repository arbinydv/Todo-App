Rails.application.routes.draw do
  get 'home/about'
  get 'home/task'
  get 'home/tasks'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
