class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories, :brands

  before_action :configure_permitted_parameters, if: :devise_controller?

  def categories
  	@categories = Category.order(:name)
  end

  def brands
  	@brands = Product.pluck(:brand).uniq.sort
  end

 protected

 def configure_permitted_parameters

 devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
    :password_confirmation, :role) }

 devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password,
    :password_confirmation, :current_password, :role) }
end



end
