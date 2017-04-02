Rails.application.routes.draw do
  devise_for :care_givers
  devise_for :fitbit_users, :controllers => { :omniauth_callbacks => "callbacks" }

  devise_scope :care_giver do
    authenticated :care_giver do
      root :to => 'care_givers#client_overview'

    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  #Fitbit_api
  get '/fitbit_api/dashboard', to: 'fitbit_api#dashboard' 					      #Client notification
  get '/fitbit_api/profile', to: 'fitbit_api#profile'						          #Client profile
  get '/fitbit_api/data', to: 'fitbit_api#data'								            #All client data
  get '/fitbit_api/notifications', to: 'fitbit_api#notifications'			    #All notifications
  get '/fitbit_api/send_notification', to: 'fitbit_api#send_notification'	#Send a notification to stakeholder
  get '/fitbit_api/add_care_user', to: 'fitbit_api#add_care_user'         #Make new client

  get '/fitbit_api/fitbit_users/auth/fitbit_oauth2' => redirect("/fitbit_users/auth/fitbit_oauth2")
  


  #Care_givers
  get '/care_givers/client_overview', to: 'care_givers#client_overview'		#Client overview
  get '/care_givers/settings', to: 'care_givers#settings' 					      #Global settings


  get '/steps', to: 'fitbit_api#steps'

end


