Muenster::Application.routes.draw do
  resources :companies, except: [:destroy]
  resources :jobs, only: [:index, :show, :new, :create]
end
