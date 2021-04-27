Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :recipes, param: :slug do
        resources :reviews
      end 
    end
  end
  get '*path', to 'pages#index', via: :all 
end

