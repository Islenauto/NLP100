 def cipher(str,mode)
   s = ""
   if mode == "encode" 
     str.chars do |c| 
       if c.match(/[a-z]/) != nil
         s << 219 - c.ord
       else
         s << c
       end
     end
   elsif mode == "decode"
     str.chars do |c|
       if (c.ord <='z'.ord && c.ord >= 'a'.ord) 
         s << 219 - c.ord
       else 
         s << c 
       end
     end
   end
   return s
 end

 p (encoded = cipher("apple1028","encode")) 
 p cipher(encoded,"decode")

