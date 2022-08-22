class Post < ApplicationRecord
	validates :title, :date, :description, :tags, presence: true
	belongs_to :user
	has_many :comments
end
