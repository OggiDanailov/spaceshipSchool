class WelcomeController < ApplicationController
  def home
  	@instructors = Instructor.all
  	@courses = Course.all
  	@depratments = Department.all
  	@articles = Article.all
  end

  def about
  end

  def contact
  end
end
