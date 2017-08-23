filename = "hightemp.txt"
File.open(filename,"r") do |f|
 nil while f.gets
  print f.lineno
end
