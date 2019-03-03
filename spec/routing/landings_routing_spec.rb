require "rails_helper"

RSpec.describe LandingsController, type: :routing do
  describe "routing" do
    
    it "routes to #index" do
      expect(:get => "/landings").to route_to("landings#index")
    end

  end
end
