class ApplicationController < ActionController::Base
	include DeviseWhitelist

	before_action	:setsource

	def setsource
		session[:source] = params[:q] if params[:q]
	end
end
