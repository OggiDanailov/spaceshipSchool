class ExamsController < ApplicationController

	 def assign
		student = Student.find(current_student.id)
		cohort = Cohort.find(params[:cohortid])
		exam = Exam.new
		redirect_to "/student/#{student.id}"
	end



private

def exam_params
	params.require(:exam).permit(:student_id, :instructor_id, :cohort_id, :name, :deadline, :grade, :comment)
end
end
