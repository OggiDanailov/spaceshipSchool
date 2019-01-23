class ExamsController < ApplicationController

def new
	@exam = Exam.new
	@cohort = Cohort.find(params[:cohort_id])
	@exams = Exam.all
end	

def create
	@cohort = Cohort.find(params[:cohort_id])
	@exam = @cohort.exams.new(exam_params)
	@exam.student_id = params[:student_id]
	@exam.instructor_id = current_instructor.id
	graded = Exam.find_by(cohort_id: @cohort.id) && Exam.find_by(student_id: params[:student_id])
	if(!graded)
		@exam.save
		redirect_to :controller => 'exams', :action => 'new'
	else 
		flash[:notice] = "You have laready graded this student"
		redirect_to :controller => 'exams', :action => 'new'
	end
end

def edit
	@cohort = Cohort.find(params[:cohort_id])
	@exam = Exam.find(params[:id])
end


def update
	@cohort = Cohort.find(params[:cohort_id])
	@exam = Exam.find(params[:id])
	if @exam.update(exam_params)
		redirect_to :controller => 'exams', :action => 'new'
	end
end



private

def exam_params
	params.require(:exam).permit(:student_id, :instructor_id, :cohort_id, :name, :deadline, :grade, :comment)
end
end
