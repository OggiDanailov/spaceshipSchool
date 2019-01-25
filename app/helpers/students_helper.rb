module StudentsHelper


	def student_grade(cohort, student)
		g = Exam.where(cohort_id: cohort.id) && Exam.where(student_id: student.id)
		if g == []
			return 'nada mis amigos'
		else
			cohort.exams.each do |e|
				return e.grade 
			end
		end

	end

	def student_grade_comment(cohort)
		g = Exam.where(cohort_id: cohort.id) && Exam.where(student_id: current_student.id)
		if g == []
			return 'nada mis amigos'
		else
			cohort.exams.each do |e|
				return e.comment 
			end
		end
	end
	
end
