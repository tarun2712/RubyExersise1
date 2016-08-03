require "crack"
require "json"
require 'csv'
require 'json'

myXML  = Crack::XML.parse(File.read("parts.xml"))
myJSON = myXML.to_json
puts myJSON
File.write('/myfile.json', myJSON)
CSV.open("mycsv.csv", "w") do |csv|
	JSON.parse(File.open("/myfile.json").read).each do |hash|
		
 			puts hash
 			File.write("/mycsv.csv", hash)
  	end
 end


	


