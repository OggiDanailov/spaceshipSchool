class CohortsController < ApplicationController
	def index
		@cohorts = Cohort.all
	end

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

	def edit
		@cohort = Cohort.find(params[:id])
	end

	def update
		@cohort = Cohort.find(params[:id])
		@cohort.instructor_id = current_instructor.id
		if @cohort.update(cohort_params)
			redirect_to "/cohorts/#{@cohort.id}"
		end	
	end

	def destroy
		@cohort = Cohort.find(params[:id])
		@cohort.instructor_id = current_instructor.id
		@cohort.destroy
			redirect_to "/"

	end



	private

	def cohort_params
		params.require(:cohort).permit(:name, :comment, :credits, :starting_date, :ending_date, :instructor_id, :course_id)
	end
end
