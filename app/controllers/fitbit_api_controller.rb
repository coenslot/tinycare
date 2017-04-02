class FitbitApiController < ApplicationController

  before_filter :authenticate_fitbit_user!, except: [:add_care_user]

  def steps
    render json: data
  end

  def data
    client = current_fitbit_user.fitbit_client
    steps = Rails.cache.fetch("#{current_fitbit_user.id}-client-activity", expires_in: 30.seconds) do
      puts "#{current_fitbit_user.id}"
      client.activity_time_series(resource: 'steps', start_date: '2016-05-03', period: '1d')
    end
    steps["activities-steps-intraday"]["dataset"].map { |data| data }
  end

  def profile
  end


  def notifications
  end


  def send_notification
  end

  def add_care_user
  end


end





