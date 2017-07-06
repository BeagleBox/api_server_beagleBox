Rails.application.routes.draw do
  resources :monitorings
  resources :routes
  resources :hotspots
  resources :items
  resources :deliveries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :employees
  resources :departaments
  resources :admins
  resources :contacts

  get '/employees/search/:name', to: 'employees#search_employees'
  get '/employees/search_departament/:departament', to: 'employees#search_employees_by_departament'
  get '/search_delivery/:delivery_id', to: 'deliveries#search_delivery'
  get '/search_items_by_delivery/:delivery_id', to: 'items#search_items_by_delivery'
  get '/search_routes_by_source_destination/:source_id/:destination_id', to: 'routes#search_routes_by_source_destination'
  get '/search_delivery_by_route/:route', to: 'deliveries#search_delivery_by_route'

  get '/search_delivery_by_source/:departament_id', to: 'departaments#search_delivery_by_source'
  get '/hotspot_names', to: 'hotspots#hotspot_names'

  post 'login', to: 'authentication#authenticate'

  get '/monitorings/:att', to: 'monitorings#battery_callback'

  #get names of departaments as string
  get '/departament_name', to: 'departaments#departament_name'

  #Route for RTC using for send information for raspberry
  mount ActionCable.server => "/cable"


end
