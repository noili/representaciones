Rails.application.routes.draw do
  resources :reservas do
    resources :payments
    resources :deposits
    resources :passengers
  end

  resources :wholesalers
  resources :retails

  resources :operators do
    resources :movements
  end

  root to: 'reservas#index'
end
