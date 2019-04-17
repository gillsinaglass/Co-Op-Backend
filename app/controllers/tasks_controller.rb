class TasksController < ApplicationController
  before_action :find_task, only: [:update, :show]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
      @task = Task.create!(task_params)
      render json: @task
  end

  def show
    render json: @task
  end

  def update
    @task.update(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @task = Task.all.find(params[:id])
      @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:description, :priority, :work_id, :user_id, :status, :estimated_time)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
