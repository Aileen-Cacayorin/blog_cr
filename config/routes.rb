Rails.application.routes.draw do
  devise_for :users


    root 'posts#index'



  resources :posts do
    resources :tags
  end


  resources :tags do
    resources :posts
  end



end
