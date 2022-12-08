import 'dart:io';
void sol(String i) {
  void check_ranges(pred) {
    print(i.split("\n").where((t) {
      var pat = RegExp(r'(.+)-(.+),(.+)-(.+)');
	  var s = pat.firstMatch(t)!.groups([1, 2, 3, 4]).map((p) => int.parse(p!)).toList();
	  return f(s[0],s[1],s[2],s[3]);
  }).length); };
  check_ranges((a,b,c,d)=>(a<=c&&b>=d)||(a>=c&&b<=d));
  check_ranges((a,b,c,d)=>(a>=c&&a<=d)||(c>=a&&c<=b));
}
void main(List<String> arguments) {
  File(arguments[0]).readAsString().then((String contents) {
    sol(contents);
  }); 
}