class SkillsController < ApplicationController
  before_action :find_skill, only: [:update]

  def index
    @skills = Skill.all
    render json: @skills
  end

  private

  def skill_params
    params.require(:skill).permit(:skill_name, :category)
  end

  def find_skill
    @skill = Skill.find(params[:id])
  end
end
