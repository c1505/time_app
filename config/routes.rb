Rails.application.routes.draw do
  get 'user/new'

    root to: 'articles#index'
    resources :articles do 
        resources :comments
    end
    resources :tags
end

