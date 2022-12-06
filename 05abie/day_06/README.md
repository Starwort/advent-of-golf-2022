# Day 6

## Part 1 - 13 chars

    Dü4.ΔÙg4Q}k4+

Explanation

```
D dup
 ü4 sliding window of 4
   .Δ repeat until
     Ùg4Q} the length of the deduplicated subarray is still 4
          k4+ position of found subarray + 4
```

## Part 2 - 16 chars

    Dü14.ΔÙg14Q}k14+

Same as part 1 but a sliding window of 14


## Combined - 31 chars

    Dü4.ΔÙg4Q}k4+sDü14.ΔÙg14Q}k14+)

Not very golfed, just parts one and two duplicated
