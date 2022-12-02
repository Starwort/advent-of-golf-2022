#76 characters. I don't speak awk, so I'm probably doing a bunch of redundant stuff somewhere.
#This will print out the intermediate steps too, so if you require the /only/ output to be the result then it's 76.
x>c{c=x;}c>b{c=b;b=x;}b>a{c=b;b=a;a=x;}!$0{x=0;}{x+=$0;}END{print(a+b+c,a);}
