ary = Array.new(7){0}
n = gets.to_i
n.times {|i|
  ary[i%7] += gets.to_i
}
7.times {|i|
  puts ary[i]
}

