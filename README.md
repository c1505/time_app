# time_app
rails project to track time spent on learning a new skill
time can now be saved in comments under start and end.  

sound is working on local server, but not in production.  

want to add the feature

 Comment.where(created_at: (Time.current.midnight)..Time.current.midnight + 1.day)


have to figure out why "created_at" isn't showing the correct time.  
Time.current returns time zone time
Time.now returns system time and ignores configuration

finally got activerecord to show the correct time Time.zone.at(Comment.last.created_at).  in the same way, i could just subtract 4 hours 


13sep15 update
fixed current pace!

22sep15 update
added raptorize under users index
worked on syling with bootstrap

issues:
can't round with a zero value
at current pace is not working correctly.  maybe with the order of created
also it shows the current pace for yesertday when it should reset to zero when the day is new
-current pace seems to be off total project time rather than time left.


validations:
time entered cannot be negative

features:
time streak
animation when one hour is complete


what to do next:
add the date when i will be hireable.  





