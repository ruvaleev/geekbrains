class HomeController < ApplicationController
  def index
<<<<<<< HEAD
    session[:times_here] ||= 0
    session[:times_here] += 1
    Rails.logger.info '#########################################'
    Rails.logger.info params.inspect
    Rails.logger.info params[:hello]
    Rails.logger.info '#########################################'
=======
>>>>>>> b5394fb350ce3648f6ec1cedb7705206ce78d7f3
  end
end
