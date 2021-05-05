require "../src/machineid"

app_id = "testApp"
puts "Your machineid is: #{Machineid.id}"
puts "Your protectedid is: #{Machineid.protectedID(app_id)}"
