class DashboardController < ApplicationController
  before_action :check_user_authentication, only: [:home]

  def home;end

  def landing;end

  def signup;end

  private

  def check_user_authentication
    if user_signed_in?
      redirect_to home_path
    else
      redirect_to root_path
    end    
  end

end
