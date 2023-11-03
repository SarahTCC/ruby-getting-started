class SarahsController < ApplicationController

  # GET /
  def index
    render plain: "Sarah index"
  end
  # GET /sarah
  def redirect_to_example
    redirect_to 'https://useamp.com', status: :moved_permanently, allow_other_host: true
  end

end
