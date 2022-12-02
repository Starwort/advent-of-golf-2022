# u/442401: 202c
$solution = lambda do |i|
  a={"AX"=>4,"AY"=>8,"AZ"=>3,"BX"=>1,"BY"=>5,"BZ"=>9,"CX"=>7,"CY"=>2,"CZ"=>6}
  b=a.merge({"AX"=>3,"AY"=>4,"AZ"=>8,"CX"=>2,"CY"=>6,"CZ"=>7})
  g=->(h){i.split("\n").reduce(0){_1+h[_2.tr(?\s,"")]}}
  [g[a],g[b]]
end
