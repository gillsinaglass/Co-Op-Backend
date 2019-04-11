class WorksController < ApplicationController
  before_action :find_work, only: [:update]

  def index
    @works = Work.all
    render json: @works
  end

  def create
      @work = Work.create!(work_params)
      render json: @work
  end

  def show
    render json: @work
  end

  def update
    @work.update(work_params)
    if @work.save
      render json: @work, status: :accepted
    else
      render json: { errors: @work.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @work = Work.all.find(params[:id])
      @work.destroy
  end

  private

  def work_params
    params.require(:work).permit(:work_title, :description, :collaboration_id, :estimated_time, :priority, :status, :image_one, :image_two, :image_three, :video_url, :git_hub)
  end

  def find_work
    @work = Work.find(params[:id])
  end
end
