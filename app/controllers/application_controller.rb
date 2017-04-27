class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def after_sign_out_path_for (resource_or_scope)
    "/locations"
  end

  def after_sign_in_path_for (resource_or_scope)
    "/locations"
  end
end
