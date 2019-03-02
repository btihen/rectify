class LandingsController < ApplicationController
  # skip_before_action :authenticate_user!

  layout 'layouts/landings'

  def index
    render 'landings/index'
  end

end
