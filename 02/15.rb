N = ARGV[0].to_i
arr = []
File.open("hightemp.txt","r") do |f|
  f.each {|line| arr << line}
end
N.times {|i| print arr.pop}
