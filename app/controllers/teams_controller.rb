class TeamsController < ApplicationController
  def index
  end
  
  def new
  	@team = Team.new
  end

  def show
  	@team = Team.find(params[:id])
  end

  def create
  	binding.pry
  	@team = Team.new(team_params)
  	@team.save
  	redirect_to @team
  end



  private
  def team_params
  	params.require(:team).permit(:name, :description)
  end
end
