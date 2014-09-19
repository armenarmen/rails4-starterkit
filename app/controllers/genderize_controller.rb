require 'httparty'

class GenderizeController < ApplicationController
  skip_authorization_check
  
  def index
  	if request.post?
  		name = params['index']['name']
		@info = HTTParty.get("http://api.genderize.io?name=#{name}")
  	end
  end

  private

  def index_params
  	params.require(:name)
  end

end
