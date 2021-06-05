Rails.application.routes.draw do
  # get 'users/home'
  root 'users#home'
  # get '/home', to: 'users#home'
  get '/help', to: 'users#help'
  # get 'users/about'
  get '/about', to: 'users#about'
  # get 'users/contact'
  get '/contact', to: 'users#contact'
end
