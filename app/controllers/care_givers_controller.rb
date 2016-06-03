class CareGiversController < ApplicationController

  def settings
  end

  def client_overview
    return redirect_to root_path if current_care_giver.nil?
  	@fitbits = FitbitUser.where(:care_giver_id == current_care_giver.id)
  end

end
