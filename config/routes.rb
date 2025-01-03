Rails.application.routes.draw do
  resources :orders
  resources :promotion_products
  resources :promotions
  resources :products
  resources :categories
  resources :establishments
  devise_for :users
  root "home#index"
  get "home/index",      as: "home_index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
