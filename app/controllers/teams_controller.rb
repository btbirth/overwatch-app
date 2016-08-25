class TeamsController < ApplicationController
  def new
    
  end

  def create
  	@team = Team.new(team_params)

  	if @team.save
  		format.html { redirect_to root, notice: 'You created a team.' }
  	else
  		format.html { render :new }
  	end

  end

  def show
  end

  def add
  end

  def remove
  end

  private
    def team_params
      params.require(:team).permit()
    end
end
