class Portfolio < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: 

	def self.angular
		Portfolio.where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, ->{where(subtitle: 'Ruby on Rails')}

	after_initialize :set_default

	def set_default
	  self.main_image ||= 'https://placehold.it/600x400'
	  self.thumb_image ||= 'https://placehold.it/350x200'
	end
end
