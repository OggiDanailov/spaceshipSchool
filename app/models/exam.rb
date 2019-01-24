class Exam < ApplicationRecord
	belongs_to :student
	belongs_to :instructor
	belongs_to :cohort

end
