class DashboardController < ApplicationController
  before_action :check_user_authentication, only: [:landing]

  def home;end

  def landing;end

  def signup
    @user = User.where(email: params[:email]).first_or_initialize
  end

  private

  def check_user_authentication
    if user_signed_in?
      redirect_to home_path
    end    
  end

end
