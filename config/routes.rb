Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :characters, only: [:new, :create, :show, :index]
      resources :levels, only: [:show, :index]
      resources :stat_sheets, only: [:new, :create, :update, :show, :index, :delete]
      resources :users, only: [:new, :create, :update, :show, :index, :delete]
      resources :statistics
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
