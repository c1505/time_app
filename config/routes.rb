Rails.application.routes.draw do
    root to: 'articles#index'
    get 'signup'  => 'users#new'
    resources :users
    resources :articles do 
        resources :comments
    end
    resources :tags
    
end

