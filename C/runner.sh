#!/bin/sh

set -e
test $# -eq 1
${CC:-cc} -o day_$1 day_$1.c
{ cat ../solutions/$1/1.solution; echo; \
  cat ../solutions/$1/2.solution; echo; } | sed -n '/./p' > expected
{ awk 1 < ../inputs/$1.in | ./day_$1 || :; echo; } |
  tr -s '[:space:]' '\n' | sed -n '/./p' | awk '
/^[.#]{40}$/ {
  ocr=1
  n=split($ 0, arr, "")
  for (i=0; i<n; i++)
    A[int(i/5)] += (arr[i+1]~/#/) * (2 ^ (i%5*2))
  next
}
{ print }
END {
  ORS=""
  for (i=0; ocr&&i<8; i++)
    print substr("X L  J  G K IAHS  E   F       Y   RZOUB C P", A[i]%44+1, 1)
  if (ocr) print "\n"
}' - > actual
diff -u expected actual
cat actual
