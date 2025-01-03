Rails.application.routes.draw do
  resources :relatorio_de_vendas
  resources :reservas
  resources :avaliacaos
  resources :pedidos
  resources :promocaos
  resources :produtos
  resources :categoria
  resources :estabelecimentos
  devise_for :users
  root "home#index"
  get "home/index",      as: "home_index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
