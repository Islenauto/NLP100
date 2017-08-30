 f = File.open("text_uk.txt","r")
 txt = f.read

 hash = {}
 txt.scan(/(?:^\|)(.+)\s=\s(.+\n)/).each{|p| hash[p[0]] = p[1].chomp }
 hash.each{|key,val| puts "#{key} = #{val}"}
