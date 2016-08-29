class HerosController < ApplicationController
	def show
		@hero =  Hero.find(params[:id])
		url = "https://api.lootbox.eu/#{current_user.platform}/#{current_user.region}/#{current_user.tag}/quick-play/hero/#{@hero.name}/"
		response = RestClient.get(url)
  		@data = JSON.parse(response)
		

	end

	private
end
