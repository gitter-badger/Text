require 'open-uri'
def userid(usr)
path = File.expand_path File.dirname(__FILE__)
source = open('http://xat.me/' + usr).read
source = source.match(/\?id\=(.*)\"\>Inappropriate\<\/A\>/m)[1].strip
uid = source.match(/(.*)\&UserName/m)[1].strip
savef = File.new(path + '/users.txt', "a+")
savef.print("#{usr},")
savei = File.new(path + '/ids.txt', "a+")
savei.print("#{uid},")
savef.close
savei.close
ids = File.open(path + '/ids.txt', "rb") 
users = File.open(path + '/users.txt', "rb") 
ids = ids.read.split(",")
users = users.read.split(",")
print "Bot File ID:"
bfid = gets.chomp.to_i
puts users[bfid]
puts ids[bfid]
end
userid('pokemon')