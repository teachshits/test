# encoding: utf-8
class ApiController < ApplicationController
	def index 
		unless params['message'].nil? or params['message'].empty?
			answer = "Сервер получил сообщение '#{params['message']}'"
			render :text => { :answer => answer }.to_json
		else
			render :nothing => true
		end
	end
	
	def show
		render :nothing => true
	end

	def create
		render :nothing => true
	end

	def update
		render :nothing => true
	end

	def destroy
		render :nothing => true
	end
end
