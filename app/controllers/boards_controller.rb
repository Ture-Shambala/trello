class BoardsController < ApplicationController
  def index

  end

  def new
  	@board = Board.new
  	@teams = Team.all
  	# @board_team = BoardTeam.new(teams: Team.all)
  end

  def create
    @board = Board.new(board_params)
    @board_team = @board.board_teams.new(team_id: params[:team_id])
    # @board.team_id = params[:team_id]
    # @board_team = Team.find(params[:team_id])
    if @board.save && @board_team.save
      # @board_team.boards << @board
      redirect_to user_board_path(current_user, @board)
    else
      render 'new'
    end
  end

  def show
    @board = Board.find(params[:id])
    @board_teams = @board.teams
    # @board_team = Team.find(params[:team_id])
  end

  def edit
    @board = Board.find(params[:id])
    @teams = Team.all
  end

  def update
    @board = Board.find(params[:id])
    @team = Team.find(params[:team_id])
    if @board.update(board_params)
      if @team.present?
        @board.update(team_id: @team.id)
      end
      redirect_to user_board_path(current_user, @board)
    else
      render 'edit'
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to users_path
  end

  private
  def board_params
  	params.require(:board).permit(:title)
  end
end
