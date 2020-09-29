Rails.application.routes.draw do
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "book/index"
  resources :book do
  	resources :comments
  end
 # root 'book#index'
end
