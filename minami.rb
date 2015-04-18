x, y = gets.chomp.split(" ").map{|i| i.to_i}
stage = []
y.times {|i|
  stage[i] = gets.chomp.split(" ").map{|i| i.to_i}
}
col = Array.new(x){0}
x.times {|i|
  y.times {|j|
    if stage[j][i] == 1
      col[i] += 1
    end
  }
}
(y-1).downto(0) {|i|
  for j in 0..x-1
    if col[j] > 0
      stage[i][j] = 1
      col[j] -= 1
    else
      stage[i][j] = 0
    end
  end
}
for j in 0..y-1
  for i in 0..x-1
    print(stage[j][i])
    if i != x-1
      print(" ")
    else
      print("\n")
    end
  end
end

