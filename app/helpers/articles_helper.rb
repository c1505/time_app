module ArticlesHelper
     require 'json'
     require 'httparty'
     def article_params
            params.require(:article).permit(:title, :body, :tag_list, :image, :estimated_time, :est_to_hireable)
     end
     
     def github_commits
          
          response = HTTParty.get('https://api.github.com/users/c1505/events/public')
          my_hash = JSON.parse(response.body)
          @message = []
          my_hash.each do |f|
              if f["type"] == "PushEvent"

                  @message << f["payload"]["commits"][0]["message"]

                  testing_object = "string"
                      
              end
          end
     end
     
     def testing_method
          @item = "string"
     end
end
