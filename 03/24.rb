 f = File.open("text_uk.txt","r")
 txt = f.read

 txt.scan(/File:(.*?\..*?)(?:\|.*)\]\]/).each{|p| puts p}
