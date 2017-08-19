str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

w_lis = str.split(/[^\w]+/)
index_lis = [1,5,6,7,8,9,15,16,19]
hash = {}

0.step (w_lis.length - 1) do |i|
  word = w_lis[i]
  if index_lis.include?(i+1)
    hash[word[0,1]] = i
  else
    hash[word[0,2]] = i
  end
end

print hash
