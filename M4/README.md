Run this as `./runner.sh <day_number>` or `./runner.sh <day_number>
<part>`.  Assumes you have GNU m4 in your PATH.  An m4 script in
day_$number.m4 should use `include(i)` to take input including a
trailing newline (`i` might be an actual file or a defined macro), and
output two results separated by whitespace (one or two lines).
Optionally, golfing for just one part of the day can be done in
day_$number_$part.m4.

Scoring counts all bytes in the submission (except a final newline);
newlines mid-submission are counted as if they are essential, as it is
not easy to determine otherwise.  Commenting out earlier submissions
is probably easiest with changequote([[, ]])ifelse([[
... ]]changequote)dnl
