Rails.application.routes.draw do
  resources :departments
  resources :employees, only: %i[new create]
  get "/search", to: "employees#search"
end
