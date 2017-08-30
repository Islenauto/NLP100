 require 'json'

 hash = {}
 File.open("jawiki-country.json") do |f|
   f.each_line do |line|
     tmp = JSON.load(line)
     hash = tmp if tmp['title'] == 'イギリス'
   end
 end


 hash['text'].scan(/\[Category:.+\]/).each {|item| puts item}
