# u/Vanerac: 82c        vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
$solution = lambda { |i| [(e=i.split("\n\n").map{|l|l.split("\n").map(&:to_i).sum}.sort)[-1],e[-3..-1].sum] }
# u/442401: 64c          vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
$solution = lambda { |i| [(e=i.split("\n\n").map{_1.split.sum(&:to_i)}).max,e.max(3).sum] }
