Run this as `./runner.sh <day_number>`.  Assumes you have $CC set in
your environment (defaulting to 'cc'), and a single file day_$number.c
which will be compiled.  Compiler warnings are okay, but for now, the
framework is not set up for enabling special options like enabling K&R
syntax.  Your program will be fed input on stdin, including a final
trailing newline, and must output two results separated by whitespace
(one or two lines is okay); exit status is ignored.

Scoring counts newlines on preprocessor lines, but not on regular code
lines (as they can be elided with no difference to C), as in:

  echo $(( $(wc -c <day_$number.c) - $(wc -l <day_$number.c)
           + $(grep -c '^[[:space:]]*#' <day_$number.c) ))

Teaching the runner how to score submissions (all text after the last
#endif might be a good starting point) would be nice.
