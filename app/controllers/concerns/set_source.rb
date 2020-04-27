module SetSource
	extend ActiveSupport::Concern

	included do
	before_action :setsource
	end
	
	def setsource
		session[:source] = params[:q] if params[:q]
	end
end