class StudentsController < ApplicationController

	before_action :authenticate_student!
  
  def show
	  @student = Student.find(params[:id])
	  @cohorts = Cohort.all
	  @exam = Exam.new
  end

  def assign
		student = Student.find(current_student.id)
		cohort = Cohort.find(params[:cohortid])	
		existing_cohort = student.cohorts.find_by(id: cohort.id)
		if existing_cohort != nil && existing_cohort.id == cohort.id
			redirect_to(student)
			flash[:notice] = "You already added this cohort"
		else
			student.cohorts << cohort
			redirect_to(student)	
		end
	end

	def remove_cohort
		student = current_student
		cohort = Cohort.find(params[:cohort_id])
		student.cohorts.delete(cohort)
		redirect_to "/student/#{student.id}"
	end

	




	def remove_cohort
		student = current_student
		cohort = Cohort.find(params[:cohort_id])
		student.cohorts.delete(cohort)
		redirect_to "/student/#{student.id}"

	end

 


end
