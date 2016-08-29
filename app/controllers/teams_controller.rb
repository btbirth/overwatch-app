class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
  	@team = Team.new(team_params)
    @team.user_id = current_user.id
    
    if @team.save
      5.times do |x|
      @team = Team.new(team_params)
      @team.user_id = current_user.id
      @team.save
      end   
      redirect_to teams_show_path
    else
      render :new
    end
  end

  def show
    @team = Team.where(user_id: current_user.id)
    @users = User.all
    @user
  end

  def add
  end


  private
    def team_params
      params.require(:team).permit(:name)
    end
end
