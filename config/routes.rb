Rails.application.routes.draw do
  devise_for :users


    root 'posts#index'

  resources :users do
    resources :posts
  end

  resources :posts do
    resources :tags
  end


  resources :tags do
    resources :posts
  end



end
