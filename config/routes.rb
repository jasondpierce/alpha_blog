Rails.application.routes.draw do
 resources :articles
 
 get 'signup', to: 'users#new'
 resources :users, except: [:new]
 
 root 'pages#home'
  
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#destroy'
end
