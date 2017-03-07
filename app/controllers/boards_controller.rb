class BoardsController < ApplicationController
  def index

  end

  def new
  	@board = Board.new
  	@teams = Team.all
  end

  def create
  	
  end
end
