 def str_shuffle(str)
   s = ""
   str.split("\s").each do |word|
     if word.length <= 4
       s << word
       s << "\s"
     else
       s << word[0] + word[1..-2].chars.each_slice(1).map{|c| c}.shuffle.join + word[-1]
       s << "\s" 
     end
   end
   return s
 end

 p str_shuffle("I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .")
