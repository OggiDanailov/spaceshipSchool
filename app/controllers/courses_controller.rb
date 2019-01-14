class CoursesController < ApplicationController
def all_courses
		@courses = Course.all
end

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
		@department = Department.find(params[:department_id])

	end

	def create
		department = Department.find(params[:department_id])
		course = department.courses.build(course_params)
		if course.save
			redirect_to "/departments/#{params[:department_id]}"
		else
			render "/departments/#{params[:department.id]}/courses/new"
		end
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
		@department = Department.find(params[:department_id])
	end

	def update
		@department = Department.find(params[:department_id])
		@course = @department.courses.find(params[:id])
			if @course.update(course_params)
				redirect_to "/departments/#{params[:department_id]}/courses/#{params[:id]}"
			end	
	end

	def destroy
		@department = Department.find(params[:department_id])
		@course = @department.courses.find(params[:id])
		@course.destroy
		redirect_to courses_path
	end

	private
	def course_params
		params.require(:course).permit(:title, :content, :description, :department_id)
	end

end

