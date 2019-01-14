class Course < ApplicationRecord
	belongs_to :department
	has_many :cohorts
	has_many :articles
end
