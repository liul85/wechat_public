class UsersController < ApplicationController
  def new
    @user = User.create
  end

  def show
    @user = User.find(params[:id])
  end
end
