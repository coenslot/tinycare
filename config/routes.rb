Rails.application.routes.draw do
  devise_for :care_givers
  devise_for :fitbit_users, :controllers => { :omniauth_callbacks => "callbacks" }

  get '/fitbit_api/steps', to: 'fitbit_api#steps_data'
  match '/steps', to: 'fitbit_api#steps', via: 'get'
end
