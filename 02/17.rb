col1 = []
line = ""
File.open("hightemp.txt","r") do |f|
  col1 << line.split("\s")[0] while line = f.gets
end

print col1.uniq!
