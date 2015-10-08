class CommentsController < ApplicationController

  #http_basic_authenticate_with name: "mymustard", password: "isbrown12"


  def index
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    
    @article = Article.find(@comment.article_id)
    
    @comment.total = ((@comment.end - @comment.start) / 60 / 60).round(2)
    @comment.save
    if !@comment.end.nil?
      
      
      @article.project_time ||= @comment.total
      @article.project_time += @comment.total
      @article.current_pace = 0
    (@article.comments.where(created_at: (Time.current.midnight)..Time.current.midnight + 1.day)).each {|f| @article.current_pace += f.total }
      
    end
    
    
    

    
    
    
    
    
    
    @article.save
    
    redirect_to article_path(@comment.article)
  end
  
  def destroy
    @comment = Comment.find(params[:id]).destroy
    flash.notice = "Time Record '#{@comment.total}' Deleted"
    @article = Article.find(@comment.article_id)
    @article.update_attribute(:project_time, (@article.project_time - @comment.total) )
    
    @article.current_pace = 0
    (@article.comments.where(created_at: (Time.current.midnight)..Time.current.midnight + 1.day)).each {|f| @article.current_pace += f.total }
    @article.save
    
    redirect_to article_path(@comment.article)
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def index
  end
  
    def comment_params
      params.require(:comment).permit(:author_name, :body, :start, :end, :total)
    end
end