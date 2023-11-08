class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def redirect_to_useamp
    redirect_to 'https://useamp.com/customers?source=apphq-redirect', status: :moved_permanently, allow_other_host: true
  end

end
