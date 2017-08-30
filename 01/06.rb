require "./05"

x = ngram("char","paraparaparadise",2)
y = ngram("char","paragraph",2)

puts "X + Y = #{x | y}\n"
puts "X * Y = #{x & y}\n"
puts "X - Y = #{x - y}\n"

p "X: #{x.include?('se')},Y: #{y.include?('se')}"

