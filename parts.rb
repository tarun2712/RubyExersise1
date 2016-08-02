require "crack"
require "json"
require 'csv'
require 'json'

myXML  = Crack::XML.parse(File.read("parts.xml"))
myJSON = myXML.to_json
puts myJSON
File.write('/Users/NIS1576-mbp/Desktop/myfile.json', myJSON)
CSV.open("mycsv.csv", "w") do |csv|
	JSON.parse(File.open("/Users/NIS1576-mbp/desktop/myfile.json").read).each do |hash|
		
 			puts hash
 			File.write('/Users/NIS1576-mbp/Desktop/mycsv.csv', hash)
  	end
 end


	


