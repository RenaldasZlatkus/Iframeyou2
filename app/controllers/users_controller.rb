class UsersController < ApplicationController

before_filter :authorize

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id params[:id]
    @settings = @user.setting
    if @settings.frames == 1
      render :oneframe
    elsif @settings.frames == 2
      render :twoframe
    elsif @settings.frames == 3
      render :threeframe
    elsif @settings.frames == 4
      render :fourframe
    end 
  end 

   def new
    @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "You have signed up for awesomeness:)"
        redirect_to '/login'
      else
        flash[:alert] = "nope"
        redirect_to '/signup'
      end
    end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Your account has been deleted"
      redirect_to  '/signup'
    else
      flash[:alert] = "Something went wrong"
      redirect_to #users_page
  end
end

  def update
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit( :fname, :lname, :email, :password, :password_confirmation)
    end
  end
 
