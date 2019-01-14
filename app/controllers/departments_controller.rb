class DepartmentsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index, :show]

  def index
  	@departments = Department.all
  end

  def new
  	@department = Department.new
  end

  def create
  	dep = Department.new(departments_params)
  	if dep.save
  		redirect_to departments_path
  	else
  		render new_department_path
  	end
  end

  def show
    @department = Department.find(params[:id])
  end

  def edit 
    @department = Department.find(params[:id])
  end

  def update
    dep = Department.find(params[:id])
    if dep.update(departments_params)
      redirect_to "/departments/#{dep.id}"
    else 
      render "/departments/#{dep.id}/edit"
    end  
  end

  def destroy
    department = Department.find(params[:id])
    department.destroy
    redirect_to "/departments"
  end




  private

  def departments_params
  	params.require(:department).permit(:name, :description)
  end
end
