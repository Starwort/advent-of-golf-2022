#76 characters. I don't speak awk, so I'm probably doing a bunch of redundant stuff somewhere.
#With flexible rules (i.e. allowing intermediate output), you can drop the END for 73.
x>c{c=x;}c>b{c=b;b=x;}b>a{c=b;b=a;a=x;}!$0{x=0;}{x+=$0;}END{print(a+b+c,a);}
