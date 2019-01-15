class CohortsController < ApplicationController

	def new
	end

	def create
		cohort = Cohort.new(cohort_params)
		cohort.instructor_id = current_instructor.id
		if cohort.save
			redirect_to "/instructor/#{current_instructor.id}"
		end
	end

	def show
		@cohort = Cohort.find(params[:id])
	end



	private

	def cohort_params
		params.require(:cohort).permit(:name, :comment, :credits, :starting_date, :ending_date, :instructor_id, :course_id)
	end
end
