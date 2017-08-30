 require 'json'

 hash = {}
 File.open("jawiki-country.json") do |f|
   f.each_line do |line| 
     hash = JSON.load(line)
     if hash["title"] == "イギリス"
       puts hash["text"]
     end
   end
 end


