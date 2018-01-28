Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  #resources :users
  resources :posts
  get 'posts/page/(:page(.:format))', to: 'posts#index'
  get 'aboutus', to: 'home#aboutus'
  get 'home(/:hello)', to: 'home#index'
  root 'home#index'
=======
  get 'aboutus', to: 'home#aboutus'
  get 'index', to: 'home#index'
  
  #get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> b5394fb350ce3648f6ec1cedb7705206ce78d7f3
end
