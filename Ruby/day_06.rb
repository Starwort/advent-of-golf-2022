# u/442401 61 bytes
$solution = lambda { |i| [4,14].map{|n|n+i.chars.each_cons(n).find_index{_1.uniq==_1}} }
