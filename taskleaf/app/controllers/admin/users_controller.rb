class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_path(@user) ,notice: "ユーザー「#{@user.name}」を保存しました"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.all
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params) # @userの中身を user_paramsで置き換えて.updateを走らせる
      redirect_to admin_user_path(@user), notice: "ユーザーの更新をしました"
    else
      render :new
    end
  end

  def destroy
    @user = User,find(params[:id])
    @user.destroy
    redirect_to admin_users_url, notice: "ユーザー消したでー"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
  end
end
