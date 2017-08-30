 require 'json'

 f = File.open("text_uk.txt","r")
 txt = f.read
 
 #scan => ptternに()があれば()にmatchした部分文字列のみを返す
 txt.scan(/Category:(.*?)(?:\|.*?)*?\]\]/).each{|pattern| puts pattern}
