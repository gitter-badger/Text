require 'open-uri'
def createusr(usr)
path = File.expand_path File.dirname(__FILE__)
source = open('http://xat.me/' + usr.to_s).read
source = source.match(/\?id\=(.*)\"\>Inappropriate\<\/A\>/m)[1].strip
uid = source.match(/(.*)\&UserName/m)[1].strip
savef = File.new(path + '/users.txt', "a+")
savef.print("#{usr.to_s},")
savei = File.new(path + '/ids.txt', "a+")
savei.print("#{uid},")
savef.close
savei.close
puts "User Created!"
end

def findusr(usr)
path = File.expand_path File.dirname(__FILE__)
userid = File.open(path + '/users.txt', "rb") 
userid = userid.read.split(",")
puts "Bot Id:#{userid.index(usr)}"
ids = File.open(path + '/ids.txt', "rb") 
users = File.open(path + '/users.txt', "rb") 
ids = ids.read.split(",")
users = users.read.split(",")
puts "Username:#{users[userid.index(usr).to_i]}"
puts "Xat Id:#{ids[userid.index(usr).to_i]}"
end

createusr('orianthi')
findusr('orianthi')
