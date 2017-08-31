 f = File.open("text_uk.txt","r")
 txt = f.read

 hash = {}
 txt.scan(/(?:^\|)(.+)\s=\s(.+\n)/).each do |p|
   hash[p[0]] = p[1].chomp.gsub(/('''|'''')/,"")
 end
 hash.each{|key,val| puts "#{key} = #{val}"}
