return function(i)c,d=0,0 for a,b in i:gmatch"(.).(.).?"do a,b=a:byte(),b:byte()c=c+b-87+(b+~a)%3*3 d=d+(a+b-1)%3+~-b%3*3+1 end return c,d end
