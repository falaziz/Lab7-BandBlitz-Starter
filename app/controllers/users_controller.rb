class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def new
    @user = User.new
  end
  
  def edit
      @user = :current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_url, notice: 'Thank you for signing up!'
    else
      render :new
    end
  end
  
  def update
    @user = :current_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "#{@user.proper_name} was successfully updated."
    else
      render action: 'edit'
    end
  end

  private
  
  def set_user
      @user = :current_user
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :role,  :password, :password_confirmation, :active)
  end
end
