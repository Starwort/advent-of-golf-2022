# Day 4

## Part 1 - 24 chars

    |ε',¡ε'-¡`Ÿ}éRDθgs`ÃgQ}O

Explanation

```
|ε',¡ε'-¡                   parsing (split by , then by -)
         `Ÿ}                generate ranges of integers
             éR             sort by length reversed
               Dθg          dup then take the length of the last element (i.e. the shortest of the ranges)
                  s`Ãg      Take intersection of the two ranges (`Ã) and find length (g)
                      Q     if the length of the shortest equals the length of the intersection, it's entirely contained
                       }O   sum the 1s to find the answer 
```

## Part 2 - 19 chars

```
|ε',¡ε'-¡`Ÿ}`Ãg0Ê}O

|ε',¡ε'-¡           parsing 
         `Ÿ}        generate ranges of integers
            `Ãg     Take intersection of the two ranges (`Ã) and find length (g)
               0Ê}O Sum all non-zero
```

## Combined - 31 chars

    |ε',¡ε'-¡`Ÿ}éRDθgs`ÃgD0ÊŠQ)}øOR

    Combines the above, all the other noise is stack manipulation to mangle both answers in parallel


