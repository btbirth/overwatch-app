class WelcomeController < ApplicationController
  def index
  	@user = current_user
  	@heroes = Hero.all
  	url = "https://api.lootbox.eu/#{@user.platform}/#{@user.region}/#{@user.tag}/profile"
  	response = RestClient.get(url)
  	@data = JSON.parse(response)
  	
  end
end
