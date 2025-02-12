Rails.application.routes.draw do
  root 'application#square_form'  # Home page

  # Square calculator routes
  get '/square/new', to: 'application#square_form', as: 'new_square'
  get '/square/results', to: 'application#square_results', as: 'square_results'
  get '/square_root/new', to: 'application#square_root_form', as: 'new_square_root'
  get '/square_root/results', to: 'application#square_root_results', as: 'square_root_results'
  get '/payment/new', to: 'application#payment_form', as: 'new_payment'
  get '/payment/results', to: 'application#payment_results', as: 'payment_results'
  get '/random/new', to: 'application#random_form', as: 'new_random'
  get '/random/results', to: 'application#random_results', as: 'random_results'
end
