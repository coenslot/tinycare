class FitbitApiController < ApplicationController

  before_filter :authenticate_fitbit_user!, except: [:add_care_user]

  def steps
    render json: data
  end

  def data
    client = current_fitbit_user.fitbit_client
    steps = Rails.cache.fetch("#{current_fitbit_user.id}-client-activity", expires_in: 30.seconds) do
      client.activity_time_series(resource: 'steps', start_date: '2016-05-03', period: '1d')
    end
    steps["activities-steps-intraday"]["dataset"]
  end

  def heartrate
    render json: heartrate_data
  end

  def heartrate_data
    client = current_fitbit_user.fitbit_client
    heartrate = Rails.cache.fetch("#{current_fitbit_user.id}-client-activity", expires_in: 30.seconds) do
      client.heartrate_time_series(start_date: '2016-05-03', period: '1d')
    end
    heartrate["activities-heart-intraday"]["dataset"]
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
