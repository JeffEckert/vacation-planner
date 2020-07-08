Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :attractions, only: :index

  resources :vacation_plans, only: [:index, :new, :create] do
    resources :highlights, only: [:index, :new]
  end

  resources :highlights, only: :create
  get '/attractions/magic_kingdom', to: 'attractions#magic_kingdom'
  get '/attractions/epcot', to: 'attractions#epcot'
  get '/attractions/hollywood_studios', to: 'attractions#hollywood_studios'
  get '/attractions/animal_kingdom', to: 'attractions#animal_kingdom'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
