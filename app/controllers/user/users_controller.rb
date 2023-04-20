class User::UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_customer!	コントローラーに設定して、ログイン済ユーザーのみにアクセスを許可する

  def show
    @user = current_user
    # @customer = current_customer 現在ログインしている会員を取得する
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_my_page_path, notice: "You have updated　user_info successfully."
    else
      render "edit"
    end
  end

  def quit
    @user = current_user
  end

  def withdraw
    @user = current_user
    @user.update(is_deleted: true)

    reset_session
    # 「reset_session」は全てのsessionを削除します
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :kana_last, :kana_first, :email, :post_code, :address, :telephone)
  end
end
