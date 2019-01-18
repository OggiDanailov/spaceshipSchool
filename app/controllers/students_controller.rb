class StudentsController < ApplicationController
  
  def show
	  @student = current_student
	  @student_cohorts = @student.cohorts
	  @cohorts = Cohort.all
	  @exam = Exam.new
  end

  def assign
		student = Student.find(current_student.id)
		cohort = Cohort.find(params[:cohortid])
		if cohort.id > 45
			student.cohorts << cohort
		else
			redirect_to "/student/#{student.id}"
		end
	end


	def remove_cohort
		student = current_student
		cohort = Cohort.find(params[:cohort_id])
		student.cohorts.delete(cohort)
		redirect_to "/student/#{student.id}"

	end

 


end
