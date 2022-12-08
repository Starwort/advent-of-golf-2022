#!/bin/bash

set -e
if test $# -lt 1; then
    echo "Missing day argument" >&2; exit 2;
fi
# Some earlier m4 solutions required trailing newline as part of the data
# stream; they have since been adjusted to directly use ../inputs/*.in that
# excludes the trailing newline.  Use 'awk 1 <../inputs/$1.in > i' and drop
# the -Di=... below to reproduce those solutions.
rm -f expected actual i
if test ! -f ../inputs/$1.in; then
    echo "No input file for day $1" >&2; exit 2;
fi
if test $# -eq 1; then
    if test ! -f day_$1.m4; then
        echo "No golfed submissions for entire day $1" >&2; exit 2;
    fi
    expected=$(cat ../solutions/$1/1.solution; printf '\n'; \
               cat ../solutions/$1/2.solution)
    actual=$(m4 -Di=../inputs/$1.in day_$1.m4)
elif test $# -eq 2; then
    if test ! -f day_$1_$2.m4; then
        echo "No golfed submissions for day $1 part $2" >&2; exit 2;
    fi
    expected=$(cat ../solutions/$1/$2.solution)
    actual=$(m4 -Di=../inputs/$1.in day_$1_$2.m4)
fi
diff -u <(printf %s\\n "$expected") <(printf %s\\n "$actual" | tr ' ' '\n')
printf %s\\n "$actual"
