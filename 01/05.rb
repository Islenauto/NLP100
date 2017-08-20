def ngram(mode,seq,n)
  seq = seq.join("\s") if seq.kind_of?(Array)
  if mode == "char"
    return seq.gsub("\s","").chars.each_cons(n).map{|c| c.join}
  elsif mode == "word"
    return seq.split(/[^\w]/).each_cons(n).map{|arr| arr.join("\s")}
  end
end
