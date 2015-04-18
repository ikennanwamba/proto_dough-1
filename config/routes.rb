ProtoDough::Application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/delete'

  post 'posts/create'

  post 'posts/update'

  root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
  
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    
  end

end
