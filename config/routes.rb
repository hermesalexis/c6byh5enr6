Rails.application.routes.draw do
  resources :products
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :products, only: :index
    end
  end
end
