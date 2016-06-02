class CallbacksController < ApplicationController
  before_action :authenticate_care_giver!

  def fitbit_oauth2
    @fitbit_user = FitbitUser.from_omniauth(request.env["omniauth.auth"], current_care_giver)
    sign_in_and_redirect_to(@fitbit_user, fitbit_api_dashboard_path)
  end

  def failure
  end
end
