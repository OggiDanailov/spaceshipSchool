class StudentsController < ApplicationController
  def show
  @student = current_student
  @student_cohorts = @student.cohorts
  @cohorts = Cohort.all
  @exam = Exam.new
  end

 


end
