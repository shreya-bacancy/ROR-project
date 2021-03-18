Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "book/index"
  resources :tasks
  resources :book do
  	resources :comments
  end
  get '/'=> "welcome#index"
  root 'welcome#index'
 get 'search', to: 'search#search'
 get 'search/index', to: 'search#index' , as: :search_index
 
  get '/welcome/content' , to: 'welcome#content'
  get '/welcome/yield' , to: 'welcome#yield'
  
end
