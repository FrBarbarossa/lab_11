Rails.application.routes.draw do
  root "palindromes#index"
  get "/result", to: "palindromes#result" 
  get "/show", to: "palindromes#show" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end