class CommitsController < ApplicationController
    include CommitsHelper
    def index
        
        github_commits(params[:q])  #can use by doing this https://odin-c1505.c9.io/commits?status=c1505
    end
    
    def show
        # @github_user = params[:id]
        # redirect_to commits_path

    end
    
    def new
    end
    
end
