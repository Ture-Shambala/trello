class BoardsController < ApplicationController
  def index

  end

  def new
  	@board = Board.new
  	# @teams = Team.all
  	# @board_team = BoardTeam.new(teams: Team.all)
  end

  def create
  	
  end

  private
  # def board_params
  # 	params.require(:post).permit(:title, :body, category_ids: [])
  # end
end
