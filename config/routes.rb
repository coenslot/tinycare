Rails.application.routes.draw do
  devise_for :care_givers
  devise_for :fitbit_users, :controllers => { :omniauth_callbacks => "callbacks" }

  get '/fitbit_api/dashboard', to: 'fitbit_api#dashboard'
  match '/steps', to: 'fitbit_api#steps', via: 'get'

end
