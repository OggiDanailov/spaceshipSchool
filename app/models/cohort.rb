class Cohort < ApplicationRecord
	belongs_to :course
	belongs_to :instructor
	has_many :exams
	has_many :students, through: :exams
end
