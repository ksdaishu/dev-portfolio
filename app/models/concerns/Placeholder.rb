module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(heigth,width)
		"https://placehold.it/#{heigth}x#{width}"
	end
end