class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!" # flash : appcontroller method

      # redirect_to user_path(id: @user.id)
      # redirect_to ('/users/'+@user.id.to_s)
      # redirect_to user_url(@user)

      redirect_to @user

    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                      :password_confirmation)

    end

end
