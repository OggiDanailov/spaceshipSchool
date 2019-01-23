module StudentsHelper

	def student_grade(cohorts) 
			cohorts.exams.each do |e|
				if e.student_id == current_student.id
					if e.grade != []
						return e.grade
					else
						return 'not graded'
					end
				end
			end
	end

end
