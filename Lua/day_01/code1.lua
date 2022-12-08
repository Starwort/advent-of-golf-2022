-- 136
return function(i)s=load("return{"..i:gsub("\n","+"):gsub("+%+",","):sub(1,-2).."}")()table.sort(s)g=#s print(s[g],s[g-2]+s[g-1]+s[g])end
