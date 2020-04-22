Rails.application.routes.draw do
  resources :portfolios, expect: [:show,:edit]
  get 'aishu/:id', to: 'portfolios#show' , as: 'portfolio_show'
  get 'aishu/:id/edit', to: 'portfolios#edit' , as: 'portfolio_edit'

  
  get 'about-pages', to: 'pages#about'
  get 'contact-pages', to: 'pages#contact'
  
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
end
