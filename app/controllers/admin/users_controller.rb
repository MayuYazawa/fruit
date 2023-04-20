class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = Useer.find(params[:id])
  end

  def edit
    @user = Useer.find(params[:id])
  end

  def update
    @user = Useer.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :kana_last, :kana_first, :post_code, :address, :telephone, :is_deleted)
  end
end
