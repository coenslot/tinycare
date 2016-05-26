class CallbacksController < ApplicationController
  def fitbit_oauth2
    @fitbit_user = FitbitUser.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @fitbit_user
  end

  def failure
  end
end
