Rails.application.routes.draw do
  resources :contacts
  resources :products
  devise_for :users, controllers: { registration: 'users/registrations' }
  resources :entries 
  get 'home/index'
  root 'home#index'
   get 'home/contact'
   get 'home/register'
   get 'home/text'
   get 'home/faq'
   get 'home/basket'
   get 'home/category'
   get 'home/checkout1'
   get 'home/checkout2'
   get 'home/checkout3'
   get 'home/checkout4'
   get 'home/detail'
   get 'home/category_right'
   get 'home/category_full'
   get 'home/customer_order'
   get 'home/customer_orders'
   get 'home/customer_wishlist'
   get 'home/customer_account'
   get 'home/blog'
   get 'home/post'
   get 'home/text_right'
   get 'home/error'
  
  post 'home/contact_us_mailer' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
