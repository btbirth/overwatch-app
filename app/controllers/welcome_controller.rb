class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@user = current_user
  	@heroes = Hero.all
 	# url = "https://api.lootbox.eu/#{@user.platform}/#{@user.region}/#{@user.tag}/profile"
  	
  # 	url2 = "https://api.lootbox.eu/psn/us/NecromorphSteve/competitive-play/hero/"
  # 	@heroes.each do |hero|
  # 		url2 = url2 + hero.name + "%2C"
  # 	end
  # 	url2.chomp!("%2C")

  	# response = RestClient.get(url)
  	# @data = JSON.parse(response)




 
  end
end
