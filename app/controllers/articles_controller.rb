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
  	find_article()
  end

  def edit 
  	find_article()
  end

  def update
  	article = find_article()
  	article.instructor_id = current_instructor.id
  	if article.update(article_params)
  		redirect_to article
  	else
  		render "/articles/#{article.id}/edit"
  	end
  end

  def destroy
	article = find_article()
	if article.destroy
		redirect_to '/articles'
	end
  end



  private

  def find_article
	@article = Article.find(params[:id])
  end

  def article_params
  	params.require(:article).permit(:instructor_id, :course_id, :title, :content)
  end
end
