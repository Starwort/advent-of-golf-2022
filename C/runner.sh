#!/bin/sh

set -e
test $# -eq 1
${CC:-cc} -o day_$1 day_$1.c
{ cat ../solutions/$1/1.solution; echo; \
  cat ../solutions/$1/2.solution; echo; } | sed -n '/./p' > expected
{ awk 1 < ../inputs/$1.in | ./day_$1 || :; echo; } \
    | tr -s '[:space:]' '\n' | sed -n '/./p' > actual
diff -u expected actual
cat actual
