class CommitsController < ApplicationController
    include CommitsHelper
    def index
        github_commits
    end
    
    def show

    end
    
    def new
    end
    
        
end
