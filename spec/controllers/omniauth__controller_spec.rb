require 'rails_helper'

RSpec.describe OmniauthController, :type => :controller do

  describe "GET callbacks" do
    it "returns http success" do
      get :callbacks
      expect(response).to have_http_status(:success)
    end
  end

end
