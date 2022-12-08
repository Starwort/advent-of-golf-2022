import 'dart:io';
void sol(String i) {
// could be a way to shorten the condition checking
// 269 characters
void x(f){print(i.split("\n").where((t){var s=RegExp(r'(.+)-(.+),(.+)-(.+)').firstMatch(t)!.groups([1,2,3,4]).map((p)=>int.parse(p!)).toList();return f(s[0],s[1],s[2],s[3]);}).length);};x((a,b,c,d)=>(a<=c&&b>=d)||(a>=c&&b<=d));x((a,b,c,d)=>(a>=c&&a<=d)||(c>=a&&c<=b));}

void main(List<String> arguments) {
  File(arguments[0]).readAsString().then((String contents) {
    sol(contents);
  }); 
}