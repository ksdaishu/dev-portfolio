class Portfolio < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: 

	def self.angular
		Portfolio.where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, ->{where(subtitle: 'Ruby on Rails')}
end
