# Day 3

## Part 1 - 25 chars

    |εDg;ô`ÃнD.liC35-ëC17+}}O


Explanation

```
|                           split lines into array
 ε                          map each line
  Dg;ô`                     dup, push length, half, split by half, wrap into array
       Ãн                   take set intersection, keep just the single value (remove repeats)
         D.liC35-ëC17+}     dup, then if lower case convert to int and -35 if upper +17 (maps to the values used in the solution)
                       }O   close mapping then sum
```

## Part 2 - 24 chars

    |3ôε`ÃÃнD.liC35-ëC17+}}O

Explanation

```
|                           split lines into array
 3ô                         group into chunks of 3
   ε`ÃÃн                    map each, push array onto stack, take intersection of sets (twice because 3 to compare), keep last unique value
        D.liC35-ëC17+}      if statement (see part 1)
                      }O    close mapping then sum
```
