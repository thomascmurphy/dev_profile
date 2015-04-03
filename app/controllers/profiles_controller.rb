class ProfilesController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @user_signed_in = user_signed_in?
  end
end
