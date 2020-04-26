class Portfolio < ApplicationRecord
	has_many :Technologies
	include Placeholder
	validates :title, presence: true
	validates :body, presence: 

	def self.angular
		Portfolio.where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, ->{where(subtitle: 'Ruby on Rails')}

	after_initialize :set_default

	def set_default
	  self.main_image ||= Placeholder.image_generator('600','400')
	  self.thumb_image ||= Placeholder.image_generator('350','200')
	end
end
