class CollaborationsController < ApplicationController
  before_action :find_collaboration, only: [:update]

  def index
    @collaborations = Collaboration.all
    render json: @collaborations
  end

  def create
      @collaboration = Collaboration.create!(collaboration_params)
      render json: @collaboration
  end

  def update
    @collaboration.update(collaboration_params)
    if @collaboration.save
      render json: @collaboration, status: :accepted
    else
      render json: { errors: @collaboration.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @collaboration = Collaboration.all.find(params[:id])
      @collaboration.destroy
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:name, :description, :git_hub, :pitch, :status, :user_id, :image_one, :image_two, :image_three, :video, :created_at, :updated_at)
  end

  def find_collaboration
    @collaboration = Collaboration.find(params[:id])
  end
end
