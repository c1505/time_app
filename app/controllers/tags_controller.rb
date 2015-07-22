class TagsController < ApplicationController
    #http_basic_authenticate_with name: "mymustard", password: "isbrown12", except: [:index, :show]
    
    def show
        @tag = Tag.find(params[:id])
    end
    
    def index
        @tags = Tag.all
    end

    def destroy
        @tag = Tag.find(params[:id]).destroy
        flash.notice = "Tag '#{@tag.name}' Deleted"
        redirect_to tags_path
    end
end
