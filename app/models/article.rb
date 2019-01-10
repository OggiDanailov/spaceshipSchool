class Article < ApplicationRecord
	has_many :comments
	belongs_to :instructor
	belongs_to :course
end
