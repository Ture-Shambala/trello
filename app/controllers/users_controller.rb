class UsersController < ApplicationController
  
  def index
  	@users = User.all
    @teams = Team.all
    # binding.pry
    # @boards = current_user.boards
  end

  def show
  	@user = User.find(params[:id]) if params[:id]
  end

  def edit
  	@user = User.find(params[:id]) if params[:id]
  end

  def update
  	@user = User.find(params[:id])
  	respond_to do |format|
	    if @user.update(user_params)
	      format.html { redirect_to @user, notice: 'User was successfully updated.' }
	    else
	      format.html { render action: 'edit' }
	    end
  	end
  end

  def front_page
  	# if current_user.present?
  	# 	redirect_to users_path
  	# end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :phone_no, :nic_name)
  end
  
end
