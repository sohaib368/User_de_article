Rails.application.routes.draw do


  resources :user_profiles do
    member do
      get :profile
      get :publish_article
    end
  end

  devise_for :users

  resources :comments
  resources :articles do
    resources :comments
  end

  root 'user_profiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
