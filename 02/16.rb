N = ARGV[0].to_i
line = ""
File.open("hightemp.txt","r") do |f|
  while line = f.gets do
    print line
    if (f.lineno % N) == 0
      print "\n"
    end
  end
end
