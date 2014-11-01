path = File.expand_path File.dirname(__FILE__) #Finds Directory
if File.exists?(path + '/text.txt') #Checks if text.txt exists
text = File.open(path + '/text.txt', "rb") #if it does it opens it
contents = text.read.split(",") #it changes its text to an array
puts "Username: #{contents[0]}" #then spits it out
puts "Password: #{contents[1]}"
puts "Username: #{contents[2]}"
puts "Password: #{contents[3]}"
else #if it doesnt exist
print "Username1:" #it asks for usr1
usr = gets.chomp #gets it and chomps it
print "Password1:" #and so on
pwd = gets.chomp
print "Username2:"
usr2 = gets.chomp
print "Password2:"
pwd2 = gets.chomp

savef = File.new(path + '/text.txt', "w") #it opens the file
savef.print(usr + ',' + pwd + ',') #puts the text in with , seperating each
savef.print(usr2 + ',' + pwd2)
savef.close #closes file
puts "file created" #done
end