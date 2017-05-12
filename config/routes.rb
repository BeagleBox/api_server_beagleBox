Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :employees
  resources :departaments
  resources :admins

  get '/employees/search/:name', to: 'employees#search_employees'
  get '/employees/search_departament/:departament', to: 'employees#search_employees_by_departament'

  post 'login', to: 'authentication#authenticate'

  #get names of departaments as string
  get '/departament_name', to: 'departaments#departament_name'

end
