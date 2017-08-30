 fr1 = File.open("col1.txt","r")
 fr2 = File.open("col2.txt","r")
 
 File.open("merge.txt","a") do |f|
   while l1 = fr1.gets do
    l2 = fr2.gets
    f.puts(l1.chomp + "\t" + l2.chomp)
  end
 end



