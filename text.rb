path = File.expand_path File.dirname(__FILE__)
if File.exists?(path + '/text.txt')
text = File.open(path + '/text.txt', "rb")
contents = text.read.split(",")
puts "Username: #{contents[0]}"
puts "Password: #{contents[1]}"
puts "Username: #{contents[2]}"
puts "Password: #{contents[3]}"
else
print "Username1:"
usr = gets.chomp
print "Password1:"
pwd = gets.chomp
print "Username2:"
usr2 = gets.chomp
print "Password2:"
pwd2 = gets.chomp

savef = File.new(path + '/text.txt', "w")
savef.print(usr + ',' + pwd + ',')
savef.print(usr2 + ',' + pwd2)
savef.close
puts "file created"
end