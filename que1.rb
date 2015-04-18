str = gets.chomp
n = str.size
ans = ""
for i in 0..n-1
  if i.even?
    ans += str[i]
  end
end
puts ans

