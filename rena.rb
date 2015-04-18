x, y, n = gets.chomp.split(" ").map{|i| i.to_i}
table = []
y.times {|i|
  table[i] = gets.chomp.split(" ").map{|i| i.to_i}
}
btable = Array.new(y){Array.new(x){false}}
n.times {
  xmin, ymin, xmax, ymax = gets.chomp.split(" ").map{|i| (i.to_i)-1}
  for i in xmin..xmax
    for j in ymin..ymax
      btable[j][i] = true
    end
  end
}
ans = 0
for i in 0..x-1
  for j in 0..y-1
    if btable[j][i]
      ans += table[j][i]
    end
  end
end
puts ans
