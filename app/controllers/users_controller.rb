class UsersController < ApplicationController
  before_action :find_user, only: [:update, :show]

  def index
    @users = User.all
    render json: @users
  end

  def create
      @user = User.create!(user_params)
      render json: @user
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @user = User.all.find(params[:id])
      @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_pic, :job_title, :user_bio, :git_hub, :instagram, :medium, :cover_image, books_attributes: [:users])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
