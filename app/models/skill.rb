class Skill < ApplicationRecord
	include Placeholder
	validates :title, presence: true

	after_initialize :set_default

	def set_default
	  self.badge ||= Placeholder.image_generator('250','250')
	end
end
