Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'projects/', to: 'projects#index'
      get 'projects/:id', to: 'projects#show'
      get 'projects/create'
      get 'projects/update'
      get 'projects/destroy'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
