class UsersController < ApplicationController
  def new
    @user = User.new
    @user.work_collections.build
    @user.work_experiences.build
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def edit 
    @user = User.find(params[:id])
  end
end
