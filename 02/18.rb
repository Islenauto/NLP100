data = []
line = ""
File.open("hightemp.txt","r") do |f|
  data << line.split("\t") while line = f.gets
  data = data.sort_by {|x| x[2]}.reverse
end

data.each do |line|
  print line.join("\t")
end
