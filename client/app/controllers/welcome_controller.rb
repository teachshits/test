# encoding: utf-8
require 'rest_client'

class WelcomeController < ApplicationController
	def index
	end

	def send_req
		response = RestClient.get 'http://localhost:3001/api', {:params => {:message => params['message']}}
		render :text => response
	end
end
