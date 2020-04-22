class Blog < ApplicationRecord
	enum status: {Draft:0,Published:1}
	extend FriendlyId
    friendly_id :title, use: :slugged

    validates :title, presence: true
    validates :body, presence: true
end