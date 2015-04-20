ProtoDough::Application.routes.draw do
	resources :posts
	get "my_posts" => "posts#my_posts", as: "my_posts"

	root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
  
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    
  end

end
