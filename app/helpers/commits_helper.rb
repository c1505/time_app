module CommitsHelper
     require 'json'
     require 'httparty'
   def github_commits(user)
          
      response = HTTParty.get("https://api.github.com/users/#{user}/events/public")
      events = JSON.parse(response.body)
      @commit_messages = []
      events.each do |event|
          if event["type"] == "PushEvent"

              @commit_messages << event["payload"]["commits"][0]["message"]
                  
          end
      end
    end
end


# push = events.select{|event| event['type'] == "PushEvent"
#move to model