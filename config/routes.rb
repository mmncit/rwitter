Rails.application.routes.draw do
  root 'welcome#index'
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  
  resources :posts do
    # excludig delete, create route for all actions
    member do 
      get :delete
    end
  end
end
