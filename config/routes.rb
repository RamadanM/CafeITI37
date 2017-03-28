Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/index'
  resources :pros
  authenticated :user do
    root "pros#index", as: "authenticated_root"
  end

  root 'welcome#index'
end
