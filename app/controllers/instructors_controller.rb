class InstructorsController < ApplicationController
  def show
  	@instructor = Instructor.find(params[:id])
  	@cohort = Cohort.new
  end
end
