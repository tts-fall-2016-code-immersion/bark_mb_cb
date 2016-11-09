Rails.application.routes.draw do

  get 'relationship/new'

  get 'relationship/create'

  get 'relationship/update'

  get 'relationship/edit'

  get 'relationship/destroy'

  get 'relationship/show'

  get 'relationship/index'

  get 'profiles/show'

  get 'profiles/index'
  
  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"
  resources :tweets

  root 'tweets#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
