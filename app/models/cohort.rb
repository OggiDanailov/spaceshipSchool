class Cohort < ApplicationRecord
	belongs_to :course
	belongs_to :instructor
	has_many :exams
	has_and_belongs_to_many :students
end
