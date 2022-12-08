# Day 2

## Part 1

First observe that the strings convert to unique values with "C" that are nicely grouped (a trick using 05ab1e codepoint handling)

```
"A X" -> 261
"A Y" -> 262
"A Z" -> 263
"B X" -> 265
"B Y" -> 266
"B Z" -> 267
"C X" -> 269
"C Y" -> 270
"C Z" -> 271
```

so subtract 261 and we can use a simple array lookup to the results (264 and 268 not needed)

[4,8,3,0,1,5,9,0,7,2,6]

## Part 2

same again, we can create a lookup table

[3,4,8,0,1,5,9,0,2,6,7]


## Golfing and combining into one solution

Replace the lookups with compressed integers (see https://codegolf.stackexchange.com/questions/96361/tips-for-golfing-in-05ab1e/166851#166851)

```
261 -> Ƶ¡
48301590726 -> •B.0²Ù•
34801590267 -> •8wÖx“•
```

use an outer product to do both lookups at once

Combined solution is 27 chars

`|CƵ¡-•B.0²Ù•S¸•8wÖx“•SªsδèO`

```
|                           split by lines into an array, the following commands are then applied vectorised on each
 C                          convert strings to integers using the codepage builtin
  Ƶ¡-                       subtract 261
     •B.0²Ù•S¸              push (compressed) array literal onto stack
              •8wÖx“•Sª     append second (compressed) array literal to the list of arrays
                       s    swap
                        δè  outer product the indexes with each of the two array lookups
                          O sum (each)
```

[Try it online!](https://tio.run/##hVo7jiVFEPQ5xV4AhIlbmQfAwKksDyQMLIw1wMDYUyAh4YCFMBFI2DMSJofYiwyzM/O6Mj41GL07773u@uQnMjKqv3375VfffP3w8EP@89fdLx@/f/drfPLp3R/3Pz3@9cXd34//fvbd/Y/fv3/389MXv7/998/73z5/eMg366MP13gzn654/Pt2jaf/5/Xbh@t2f5rv4xqrXp7/8H21e8r@jnPOp7HzZS23scf1ua65b2t5nreu527X8731cl/BenisuH6/XXstA9aznu7F9RbYCfex2lgL7Nf3FS/r7OPufd38U@2Zgt8S7DLBbs97rjZvXd9tG90@T1rjvHyWzb/dh7d1xvVcvXwuiROdY4HNcM9F8fMcj93v0eKObYpxWpePQ/zR78fY7nbm5@N6bja7zis@dgzOFn8457bjjqEd0z2WJ6wzmv37M8@fuz@6/9APQXkVbR9q73m0b7cNPz/IRmjnbhPEiLz20NeJe8iWMzw@xlqB/xVj6vBct22ZvZ9wc5p1FvhyXPmx2vjoK4xNzt/VYmHbJ8QmC@bo8TMELxC/BuCI89UUeyTFJPp/xyXOg5gaDW@633u@BWDfNGP23GVMx3F3nFXLkzIxusQ2mgsO1/e4HG/R7BmA89Ww7YSXHN/dbkX1rc87W7wsu7do@w/AfdzjxpsJPkI7Tqn7IdhYza@K00Nq/q7xYeIuaa3Z5krrT65nE3KEfd1rtuYq1hf1w44Nro09NjdGIIfSGrHM2vT37gvkHCXcLYErYe5z3gXUn4K97DF2XUI/lOR0Qk0sqZdJNWTHXhFX6djBdun3KDcLypWE@jgt9g9j6wC@xTFcMs@AeqA24hgPqv3MezEeq3G1afB6So3BmCnC3aJaWjRmAT/n/Q/D5ZQjzit@kmqXw8Zsz2ssLsg7xO0iO2GtRBvgd/xbEscK2vswPL3vE3ucshioNbaEe3Tu0H2BtRs5K@LfOnCEknnTxtkEfj6oN2PeGpRPzLvywNETeA/3d0U4jf3eoJhH3jMpXhA/e84E7ScAxydxvUXYuAC33P4TeNE0/L7HC/YYmH8l2IU5vLE6XnkmqKdOsPeZSw6I80n1SrWElHkQ45WPlHDUkNjHvFRe7/aL/U0QVw/gX3WIU8bYzZeCeMSwWL@kH/Q1Wnmq532Y/0l6jxvD8wDes96nvUDB3jWPu/2Q87GGcur54xUtwvXY3QZ54J2ul3A6j7NbWPssyv9pMTepZ0T/lfiDcYv1Le4zsEdgX5bpLRfpaY43qpbldbGSnjxazvtcVaxWHXJKn9dtH6I9leBOmh5Y8WCZ3DjX/CS@hdhdpGfUIX5K9jNAg@Je2NffbuNBfDkhbpbVYli/Y@zs2gdzEOXy6@p7hmgMZWrglHtZ83OYyvUhRUcrwN3ec2qdYl2hXmrnMtonczbVmgb0fU4v9bpekpbNOBOEd@hD1rnK9JQl9QO5ntOFivqnZfhIj4vXOOc8aMkFONfXF6B7n2pTmZ65SJthbbPAdiFcRC/eM/P1FE25hCeyHzB2ivqtBdqW46phNINBORWmn1PuOq2dGEOD4lfztgxPLdLQOBZVh02DlapXosY/DAfDmF7mzGXrlyfN0/VkiGNlz4SwHhVpK4hDcdAHOre74RJjN/PdMP1ZgnbptdQ0vWGSFjfoHAoxswzeaO/tuOigns7pUHhmU1Z7TsPVON@6Rpyg0y3RwFjLRt6m54iOT@B5mMZZWv227LltUN/V@zDl96rBhsRmEQ5oT497xnx1vSFrkz7GkKd0Hqt4M6GPDYuH3WdFuubuZ4P4YDRNrGvhWGt9zJ/OAhC/@GzDaTzV@lzkLMpBuiZbVotQfr7sOY7iqOuxVLtEfl9GK5@i//pzuzLn6WX6KdTbfcxNyc086juq@eJZk693vBdf@zmW9b2FJLurDofvIyhfR07O@nrI@VfP3bNm9lqc97rCfQ2eDRXl@KK@hs8nlslF1sG1dqc534yD5hOivZU5P13mPBLfkRjyngnXuCU8Xm2N44bEZh37Dj7PCtEe5/9oPXXwx5S41DFVn83Du0RpOCjrLu79n/HKGf8JO046Qtcc4pV3dsZBV8T6WTbekt4PUU1hEi@aUm9SzuW41yvyhztbLam32jMuo2ky7@m5u8w5h4tr7duG6d0HYUbQGV@ShurGQ116cyncW/0H "05AB1E – Try It Online")
