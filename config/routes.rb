Rails.application.routes.draw do
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    resource :users, only:[:create]
    post "/login", to: "users#login"
    resources :events
  end
end
