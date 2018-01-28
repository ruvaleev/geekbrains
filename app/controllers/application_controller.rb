class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
=======
>>>>>>> b5394fb350ce3648f6ec1cedb7705206ce78d7f3
end
