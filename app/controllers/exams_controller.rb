class ExamsController < ApplicationController
	def index
		@cohort = Cohort.find(params[:cohort_id])
		@exams = Exam.all
	end

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
	@graded = Exam.find_by(student_id: params[:student_id])
	puts "this is cohort #{@cohort.id}"
	puts "this is exam #{@exam.id}"
	puts "this is exam_student ID #{@exam.student_id}"
	puts "this is the instructor #{current_instructor.id}"
	puts "this is graded #{@graded.id}"
	if(@graded.cohort_id != @cohort.id)
		@exam.save
		redirect_to :controller => 'exams', :action => 'new'
	else 
		flash[:notice] = "You have already graded this student"
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
	params.require(:exam).permit(:student_id, :instructor_id, :cohort_id, :grade, :comment)
end
end
