class ProfilesController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @user_signed_in = user_signed_in?
    @edit_privileges = current_user == @user
    @language_ratings = @user.ratings.subject_filter("Language")
    @work_environment_ratings = @user.ratings.subject_filter("WorkEnvironment")

    rated_language_ids = @language_ratings.pluck(:id)
    @language_choices = Language.where.not(id: rated_language_ids)
  end
end
