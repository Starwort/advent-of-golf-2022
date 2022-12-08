#!/bin/sh

set -e
if test $# -lt 1; then
    echo "Missing day argument" >&2; exit 2;
fi
# Some m4 solutions require trailing newline as part of the data stream;
# the instructions say input will be in a file or macro 'i'.  Since
# not all ../inputs/*.in include the trailing newline, this runner opts
# for creating an actual file 'i'.
if test ! -f ../inputs/$1.in; then
    echo "No input file for day $1" >&2; exit 2;
fi
awk 1 < ../inputs/$1.in > i
if test $# -eq 1; then
    if test ! -f day_$1.m4; then
        echo "No golfed submissions for entire day $1" >&2; exit 2;
    fi
    { cat ../solutions/$1/1.solution; echo; \
      cat ../solutions/$1/2.solution; echo; } | sed -n '/./p' > expected
    { m4 day_$1.m4 || :; echo; } \
        | tr -s '[:space:]' '\n' | sed -n '/./p' > actual
elif test $# -eq 2; then
    if test ! -f day_$1_$2.m4; then
        echo "No golfed submissions for day $1 part $2" >&2; exit 2;
    fi
    { cat ../solutions/$1/$2.solution; echo; } | sed -n '/./p' > expected
    { m4 day_$1_$2.m4 || :; echo; } \
        | tr -s '[:space:]' '\n' | sed -n '/./p' > actual
fi
diff -u expected actual
cat actual
