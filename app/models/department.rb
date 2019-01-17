class Department < ApplicationRecord
	has_many :courses
	has_many :cohorts, through: :courses
end
