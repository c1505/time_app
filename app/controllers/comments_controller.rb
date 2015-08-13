class CommentsController < ApplicationController

  #http_basic_authenticate_with name: "mymustard", password: "isbrown12"


    
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.total = ((@comment.end - @comment.start) / 60 / 60).round(2)
    @article = Article.find(@comment.article_id)
    @article.project_time ||= @comment.total
    @article.project_time += @comment.total
    
    @comment.save
    @article.save
    
    redirect_to article_path(@comment.article)
  end

    def comment_params
      params.require(:comment).permit(:author_name, :body, :start, :end, :total)
    end
end