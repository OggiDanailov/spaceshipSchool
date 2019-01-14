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
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def course_params
		params.require(:course).permit(:title, :content, :description, :department_id)
	end

end

