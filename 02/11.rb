filename = "hightemp.txt"
line = ""
File.open(filename) do |f|
  p line.gsub("\t","\s") while line = f.gets
end
