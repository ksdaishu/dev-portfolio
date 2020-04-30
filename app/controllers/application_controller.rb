class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent

	before_action :set_copyrigth

	def set_copyrigth
		@copyrigth =  DevcampViewTool::Renderer.copyrigth 'Aishu','All rigths reserved'
	end

	module DevcampViewTool
		class Renderer
			def self.copyrigth name,msg
				"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
			end
		end
	end
end
