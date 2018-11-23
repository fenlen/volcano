require 'rails_helper'

RSpec.describe "UniqVolcanos", type: :request do
  describe "GET /uniq_volcanos" do
    it "works! (now write some real specs)" do
      get uniq_volcanos_path
      expect(response).to have_http_status(200)
    end
  end
end
