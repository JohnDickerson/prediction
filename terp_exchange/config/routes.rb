Rails.application.routes.draw do

  # root 'controller_name#action_name'
  root 'application#splash'

  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  match 'market/:mid', to: 'application#marketData', via: [:get]
  match 'graph/:mid', to: 'application#marketGraph', via: [:get]

end
