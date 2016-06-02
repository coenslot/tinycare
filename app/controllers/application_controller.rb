class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in_and_redirect_to(resource, path)
    sign_in(resource)
    redirect_to path
  end
end
