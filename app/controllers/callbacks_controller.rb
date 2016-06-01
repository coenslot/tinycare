class CallbacksController < ApplicationController
  before_action :authenticate_care_giver!

  def fitbit_oauth2
    @fitbit_user = FitbitUser.from_omniauth(request.env["omniauth.auth"], current_care_giver)
    sign_in_and_redirect @fitbit_user
  end

  def failure
  end
end

