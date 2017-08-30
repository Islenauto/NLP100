s1 = "パトカー"
s2 = "タクシー"
s3 = ""

0.step (s1.length - 1) do |i|
  s3 << s1[i] 
  s3 << s2[i]
end

puts s3
