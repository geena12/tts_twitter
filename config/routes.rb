Rails.application.routes.draw do
  devise_for :users
  root "timeline#index"
  get "/timeline" => "timeline#index"
  get "/users" => "users#index"
end
