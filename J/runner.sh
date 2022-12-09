#!/bin/sh

# Set J_COMMAND here:
J_COMMAND=

if [ -z "$1" ]; then
  echo "Usage: ./$0 <day number>"

  exit 1
fi

if [ -z "$J_COMMAND" ]; then
  echo "Error: \$J_COMMAND is not set. Please edit runner.sh to point \$J_COMMAND to your local J interpreter binary to proceed."

  exit 1
fi

attempts="$($J_COMMAND day_$1.ijs < ../inputs/$1.in | sed 's/[^0-9A-Za-z ]//g' | tr "\n" " ")"
solutions="$(cat ../solutions/$1/1.solution; echo -n ' '; cat ../solutions/$1/2.solution)"

(echo "$attempts"; echo "$solutions") |\
awk '
  NR == 1 {
    attempts[1] = $1;
    attempts[2] = $2;
  }

  NR == 2 {
    solutions[1] = $1;
    solutions[2] = $2;
  }

  END {
    for(i = 1; i <= 2; i++) {
      if(attempts[i] == solutions[i]) {
        print "PASS " attempts[i] " == " solutions[i]
      } else {
        print "FAIL " attempts[i] " != " solutions[i]
      }
    }
  }
'

solution_length=$(wc -c day_$1.ijs | awk '{print $1}')
echo "Solution is $solution_length bytes long."
