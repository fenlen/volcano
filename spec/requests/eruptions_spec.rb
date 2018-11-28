require 'rails_helper'

RSpec.describe "Eruptions", type: :request do

  describe "GET /eruptions as guest" do
    it "redirects to login" do
      get eruptions_path
      expect(response).to have_http_status(302)
    end
  end
end
