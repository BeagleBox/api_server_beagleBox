Rails.application.routes.draw do
  resources :items
  resources :deliveries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :employees
  resources :departaments
  resources :admins

  get '/employees/search/:name', to: 'employees#search_employees'
  get '/employees/search_departament/:departament', to: 'employees#search_employees_by_departament'
  get '/search_items/:delivery_id', to: 'items#search_items_by_delivery'

  post 'login', to: 'authentication#authenticate'


end
