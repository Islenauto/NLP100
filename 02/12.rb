r_name = "hightemp.txt"
w1_name = "col1.txt"
w2_name = "col2.txt"

fw1 = File.open(w1_name,"a")
fw2 = File.open(w2_name,"a")

File.open(r_name,"r") do |f|
  line = ""
  while line = f.gets do 
    col = line.split("\t") 
    fw1.puts(col[0])
    fw2.puts(col[1])
  end
end
