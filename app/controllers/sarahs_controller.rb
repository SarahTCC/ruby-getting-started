class SarahsController < ApplicationController

  # GET /
  def redirect_to_useamp
    redirect_to 'https://useamp.com/customers?source=apphq-redirect', status: :moved_permanently, allow_other_host: true
  end

end
