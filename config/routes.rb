Rails.application.routes.draw do
  get "/timeline" => "timeline#index"
  get "/users" => "users#index"
end
