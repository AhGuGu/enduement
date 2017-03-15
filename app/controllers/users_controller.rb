class UsersController < ApplicationController
before_action :is_authenticated, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def show
    @user = User.find_by_id(session[:user_id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account Created. Please Login"
      redirect_to profile_path
    else
      render :new
    end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
      flash[:success] = 'User profile successfully updated.'
    else
      render :edit
    end
  end

  def profile
  end

  private

  def user_params
    params.require(:user).permit(:salutation, :first_name, :last_name, :dob, :ContactNumber, :email, :password)
  end
end
