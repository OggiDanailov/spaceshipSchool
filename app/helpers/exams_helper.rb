module ExamsHelper
	def grades
		@grades = [2,3,4,5,6]
	end


	def student_teacher_grade(student,cohort,  e)
		if(e.student_id == student.id)
			return true
		end
	end

end
