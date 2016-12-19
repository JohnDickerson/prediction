Rails.application.routes.draw do

  # root 'controller_name#action_name'
  root 'application#splash'

  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  match 'graph/:mid.json', to: 'application#marketData', via: [:get]
  match 'graph/:mid', to: 'application#marketGraph', via: [:get]
  match 'marketprices.json', to: 'trades#allMarkets', via: [:get]
  match 'buy/:input', to: 'trades#buyShares', via: [:get]
  match 'sell/:input', to: 'trades#buyShares', via: [:get]


end
