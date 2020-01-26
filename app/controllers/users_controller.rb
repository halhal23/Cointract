class UsersController < ApplicationController
  def index
    @user = User.new(name: "hiroharu", email: "hh.25799623@gmail.com")
  end

  def show
  end

  def new
  end

  def edit
  end
end
