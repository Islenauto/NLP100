N = ARGV[0].to_i
File.open("hightemp.txt","r") do |f|
  N.times {|i| print f.gets}
end
