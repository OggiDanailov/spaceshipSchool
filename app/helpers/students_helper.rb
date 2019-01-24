module StudentsHelper


	def student_grade(cohorts) 
		cohorts.exams.each do |e|
			if e.student_id == current_student.id					
				return e.grade
			end
		end
	end
	
end
