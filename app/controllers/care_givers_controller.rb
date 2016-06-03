class CareGiversController < ApplicationController

  def settings
  end

  def client_overview
  	@fitbits = FitbitUser.where(:care_giver_id == current_care_giver.id)
  end

end
