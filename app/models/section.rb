class Section < ApplicationRecord
	validates :title, presence: true
	has_many :blogs
end
