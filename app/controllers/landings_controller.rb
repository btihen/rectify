# frozen_string_literal: true

# Landing page flow - allows unlogged in users access
class LandingsController < ApplicationController
  # skip_before_action :authenticate_user!

  layout 'layouts/landings'

  def index
    render 'landings/index'
  end
end
