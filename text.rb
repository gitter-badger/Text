
#this is the user id grabber
#it also gives a user their bot/array id/number
#there are 2 methods, 1 which creates a user id stuff
#another which finds it
#cut out 27 or 28 to make it either username grabber or ID grabber
require 'open-uri'
def createusr(usr)
path = File.expand_path File.dirname(__FILE__)
source = open('http://xat.me/' + usr.to_s).read #go to site
source = source.match(/\?id\=(.*)\"\>Inappropriate\<\/A\>/m)[1].strip #cut up site
uid = source.match(/(.*)\&UserName/m)[1].strip #strip username from site
savef = File.new(path + '/users.txt', "a+") #open usr file
savef.print("#{usr.to_s},") #write usr into file
savei = File.new(path + '/ids.txt', "a+") #open id file
savei.print("#{uid},") #write id into file
savef.close #save usr file
savei.close #save id file
end

def findusr(usr)
path = File.expand_path File.dirname(__FILE__)
ids = File.open(path + '/ids.txt', "rb") #read file
ids = ids.read.split(",") #to array
users = File.open(path + '/users.txt', "rb") #read file
users = users.read.split(",") #to array
bfid = users.index(usr).to_i
puts users[bfid]  #cut either me
puts ids[bfid]  #or me
end


createusr('orianthi')

findusr('orianthi')
