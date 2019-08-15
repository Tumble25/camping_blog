Rails.application.routes.draw do
  devise_for :users
  root to: 'interviews#index'
  resources :interviews do
    resources :comments, only: [:index, :new, :create, :destroy]
  end
  resources :comments, only: [ :show, :edit, :update, :destroy ]
  get 'over-ons', :to => 'pages#home', :as => :over_ons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
