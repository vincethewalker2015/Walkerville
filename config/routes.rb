Rails.application.routes.draw do
 
 root 'pages#home'
 get 'pages/home'
 
 resources :topics
 
end
