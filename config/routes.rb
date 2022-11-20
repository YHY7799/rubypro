Rails.application.routes.draw do
  devise_for :users
  resources :posts
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  devise_scope :user do
  match '/sessions/user', to: 'devise/sessions#create', via: :post
end



  get 'home/about'
  # root 'home#index'
  root 'posts#index'

end
