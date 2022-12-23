# Rules
- all input is read via STDIN
- leading and trailing whitespace is allowed
- program must terminate
- save your file **WITHOUT** leading / trailing newlines unless they is necessary

add your solution to `code-a.pl` (2 values seperated by " " or "\n" for part 1 & 2 respectively)<br>
add your part 1 solution `1-a.pl` **(OPTIONAL)**<br>
add your part 2 solution `2-a.pl` **(OPTIONAL)**<br>

in the case of a grid output for part 1 and/or 2, the output must contain only "." and "#" characters. also part 1 and 2 must be seperated by "\n\n"<br>

increment the letter if you want to make an improvement (less bytes)<br>
`2-a.pl` -> `2-b.pl`<br>

using exec function or calling shell via \`\` is **DENIED**. using CPAN modules is also **DENIED**, but any [core modules](https://perldoc.perl.org/modules) are fair game<br>
any denied solutions under these rules can still be submitted (as `1-a-NON-COMPETING.pl` for example)<br>

this program is 21 bytes (check [tio](https://tio.run/#perl5) if unsure)<br>
```pl
#!perl -p
$_="$_🐔"
```

11 bytes NON-COMPETING
```pl
print`dd`+3
```