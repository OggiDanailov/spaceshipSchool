class ArticlesController < ApplicationController
	before_action :authenticate_instructor!, :except => [:index, :show]
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	article = Article.new(article_params)
  	article.instructor_id = current_instructor.id 
  	if article.save
  		redirect_to articles_path
  	else
  		render new_article_path
  	end
  end

  def show
  	@article = Article.find(params[:id])
  end



  private

  def article_params
  	params.require(:article).permit(:instructor_id, :course_id, :title, :content)
  end
end
