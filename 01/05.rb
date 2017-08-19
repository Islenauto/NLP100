def ngram(mode,seq,n)
  seq = seq.join("\s") if seq.kind_of?(Array)
  if mode == 1
    return seq.gsub("\s","").chars.each_cons(n).map{|c| c.join}
  elsif mode == 2
    return seq.split(/[^\w]/).each_cons(n).map{|arr| arr.join("\s")}
  end
end

print  ngram(1,"I am an NLPer",2)
print  ngram(2,"I am an NLPer",2)
