Rails.application.routes.draw do
  resources :pros
  devise_for :users
  get 'welcome/index'

  authenticated :user do
    root "pros#index", as: "authenticated_root"
  end

  root 'welcome#index'
end
