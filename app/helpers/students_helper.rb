module StudentsHelper


	def student_grade(cohorts) 
		cohorts.exams.each do |e|

			return current_student.id
		end
	end
	
end
			# if e.student_id == current_student.id					
			# 	return e.student_id
			# end
