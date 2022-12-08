Solution has to return a function. Function must contain parsing logic of the input.<br/>
Solution, given an input, must run with the correct output on a Lua 5.4 compiler; there are no limits as to how the output might be displayed, so long as you can easily distinguish the output for the two parts. If the output values are rearranged, they must either be noted in the output or in the code, as a comment.
```lua
-- Good output
<part1>_<part2>

<part1>0<part2>

<part1> <part2>

<part1>
<part2>

<part1><symbol><part2>
-- Bad output
<part1><part2>
<part2><part1>
```
