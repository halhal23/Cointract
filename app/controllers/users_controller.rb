class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notive: "会員を登録しました。"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.assing_attributes(user_params)
    if @user.save
      redirect_to @user, notive: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :users, notice: "会員登録を解除しました。"
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
