def create(path)
print "Username:"
usr = gets.chomp
print "Password:"
pwd = gets.chomp
savef = File.new(path + '/text.txt', "a+")
savef.print(usr + ',' + pwd + ',')
savef.close
puts "file created" 
end
def read(path)
text = File.open(path + '/text.txt', "rb") 
contents = text.read.split(",")
nxt = "y"
u = 0
p = 1
while nxt === "y"
puts "Username: #{contents[u]}"
puts "Password: #{contents[p]}"
print "Read Next?(y or n):"
nxt = gets.chomp
u += 2
p += 2
end
end
path = File.expand_path File.dirname(__FILE__)
print "Create or Read (c or r):"
opt = gets.chomp.downcase
if opt === "c"
create(path)
elsif opt === "r"
read(path)
else
puts "invalid option"
end
