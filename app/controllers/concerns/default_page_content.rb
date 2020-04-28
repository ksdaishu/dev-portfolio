module DefaultPageContent
	extend ActiveSupport::Concern

	included do
	before_action :set_page_content
	end
	
	def set_page_content
		@page_title = "Devcamp Portfolio | My portfolio blogs"
		@seo_keywords="Aishwarya Portfolio"
	end
end