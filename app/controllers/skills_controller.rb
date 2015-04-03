class SkillsController < ApplicationController

  def show
    @skill = Skill.find(params[:id])
    render json:@skill
  end

  def update
    @skill = Skill.find(params[:id])

    if @skill.update(skills_params)
      render json:@skill
    end

  end





  private
    def skills_params
      params.permit(:rating)
    end

end