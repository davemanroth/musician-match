class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  def create
    @user = User.create!(user_params)
    render json: @user, status: 201
  end

  private 
    def user_params
      params.permit(:first_name, :last_name, :username, :email, :password_digest)
    end
end
