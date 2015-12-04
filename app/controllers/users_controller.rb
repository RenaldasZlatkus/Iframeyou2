class UsersController < ApplicationController

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    @settings = user.settings.params(frames: "1")
    if @user.save
      flash[:notice] = "Your account was created succesfully."
      redirect_to login_path
    else
      flash.now[:alert] = "There was a problem saving your account."
      render "new"
     end
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

	def update
	end

	def edit
	end

	def index
   		@user = User.all
	end

	def destroy
	end

end
