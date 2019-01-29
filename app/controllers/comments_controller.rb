class CommentsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		comment = @article.comments.create(comment_params)
		if current_instructor
			comment.instructor_id = current_instructor.id 
		end
		if current_student
			comment.student_id = current_student.id 
		end
		if comment.save
			redirect_to "/articles/#{params[:article_id]}"
		else 
			render "/articles/#{params[:article_id]}"
		end
	end




	private
	def comment_params
		params.require(:comment).permit(:content, :instructor_id, :article_id, :student_id)
	end


	
end
