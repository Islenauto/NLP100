str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

str.split(/[^\w]+/).each do |word|
  print word.length
end
