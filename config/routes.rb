Rails.application.routes.draw do
  resources :portfolios

  
  get 'about-pages', to: 'pages#about'
  get 'contact-pages', to: 'pages#contact'
  
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
end
