Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :attractions, only: :index

  resources :vacation_plans, only: [:index, :new, :create] do
    resources :highlights, only: [:index, :new]
  end

  resources :highlights, only: :create

end
