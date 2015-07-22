class ArticlesController < ApplicationController
    include ArticlesHelper
    #http_basic_authenticate_with name: "mymustard", password: "isbrown12", except: [:index, :show]
    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @article_id
    end
    
    def new
        @article = Article.new
    end
    
    def create 
        @article = Article.new(article_params)
        @article.save
        
        flash.notice = "Article '#{@article.title}' Created"
        
        redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.find(params[:id]).destroy
        
        flash.notice = "Article '#{@article.title}' Deleted"
        redirect_to articles_path
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        
        flash.notice = "Article '#{@article.title}' Updated"
        
        redirect_to articles_path(@article)
    end
end

#using this works without a private method because you are explicitly saying the params accepted 
# def create
#   @article = Article.new(
#     title: params[:article][:title],
#     body: params[:article][:body])
#   @article.save
#   redirect_to article_path(@article)
# end

#retrieve user input
#call method with user input





