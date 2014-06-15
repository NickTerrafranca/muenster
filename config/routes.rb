Muenster::Application.routes.draw do
  resources :companies, except: [:destroy]
  resources :jobs, except: [:destroy]
end
