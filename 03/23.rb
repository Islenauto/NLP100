 f = File.open("text_uk.txt","r")
 txt = f.read

 txt.scan(/(^={1,})(?:\s*)(.+?)(?:\s*)(={1,})/).each{|p| puts "#{p[1]}:\s#{p[0].length}"}
