class ProfileController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
  end

  def update
    current_user.update_attributes(user_params)
    redirect_to profile_path
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :profile_image_url)
  end

end
