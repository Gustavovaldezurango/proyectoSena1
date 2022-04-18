Rails.application.routes.draw do 
  
  root to: "home#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :home, only:[:index]
  resources :areas do
    resources :programas, module: :areas
  end 
  resources :fichas 
  resources :fichaprograma
  
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
