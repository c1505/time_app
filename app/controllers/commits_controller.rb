class CommitsController < ApplicationController
    # include CommitsHelper
    def index
        unless params[:q].nil?

                @commit_messages = Commit.github_commits(params[:q]) #this method should be refactored and moved to the model.  
                #add the default option is to take it from user login
                

        end
    end
    
    def show

    end
    
    def new
    end
    
end
