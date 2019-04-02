class TeamsController < ApplicationController
  before_action :find_team, only: [:update]

  def index
    @teams = Team.all
    render json: @teams
  end

  def create
      @team = Team.create!(team_params)
      render json: @team
  end

  def update
    @team.update(team_params)
    if @team.save
      render json: @team, status: :accepted
    else
      render json: { errors: @team.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @team = Team.all.find(params[:id])
      @team.destroy
  end

  private

  def team_params
    params.require(:team).permit(:user_id, :work_id, :team_name)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
