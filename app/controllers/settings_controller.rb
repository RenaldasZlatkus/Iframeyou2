class SettingsController < ApplicationController
  def index
  end

  def show
  end


  def create
  end

  def update
    @user = User.find_by_id params[:user_id]
    @settings = @user.setting
    @settings.update setting_params
    redirect_to user_path @user
  end

  def destroy
  end

  def edit
  end

  private
  def setting_params
      params.require(:setting).permit(:style, :skin, :frames, :background, :website1, :website2, :website3, :website4)
   end

end

