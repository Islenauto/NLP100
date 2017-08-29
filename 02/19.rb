 hash = {}
 col1 = []
 line = ""
 File.open("hightemp.txt","r") do |f|
   col1 << line.split[0] while line = f.gets
 end
 col1.uniq.each{|prf| hash[prf] = col1.count(prf)}

 hash.sort_by{|x| x[1]}.reverse.each do |key,value|
   puts "#{key} #{value}"
 end
