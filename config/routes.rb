Rails.application.routes.draw do
    root to: 'articles#index'
    get 'signup'  => 'users#new'
    resources :users
    resources :articles do 
        resources :comments, shallow: true
    end
    #trying without nesting/namespacing
    # resources :articles
    # resources :comments
    resources :tags
    
    resources :commits
    
end

