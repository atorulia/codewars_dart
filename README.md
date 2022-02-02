# Ones and Zeros

Given an array of ones and zeroes, convert the equivalent binary value to an integer.

Eg: ```[0, 0, 0, 1]``` is treated as ```0001``` which is the binary representation of ```1```.

### Examples:

```Dart
Testing: [0, 0, 0, 1] ==> 1
Testing: [0, 0, 1, 0] ==> 2
Testing: [0, 1, 0, 1] ==> 5
Testing: [1, 0, 0, 1] ==> 9
Testing: [0, 0, 1, 0] ==> 2
Testing: [0, 1, 1, 0] ==> 6
Testing: [1, 1, 1, 1] ==> 15
Testing: [1, 0, 1, 1] ==> 11
```

However, the arrays can have varying lengths, not just limited to `4`.

# Count the smiley faces!

Given an array (arr) as an argument complete the function `countSmileys` that should return the total number of smiling faces.

Rules for a smiling face:

Each smiley face must contain a valid pair of eyes. Eyes can be marked as `:` or `;`
A smiley face can have a nose but it does not have to. Valid characters for a nose are `-` or `~`
Every smiling face must have a smiling mouth that should be marked with either `)` or `D`
No additional characters are allowed except for those mentioned.

Valid smiley face examples: `:) :D ;-D :~)`
Invalid smiley faces: `;( :> :} :]`

### Example
```Dart
countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
```

### Note
In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same.

# Some Egyptian fractions

Given a rational number n

`n >= 0, with denominator strictly positive`

- as a string (example: "2/3" in Ruby, Python, Clojure, JS, CS, Go)
or as two strings (example: "2" "3" in Haskell, Java, CSharp, C++, Swift, Dart)
- or as a rational or decimal number (example: 3/4, 0.67 in R)
- or two integers (Fortran)

decompose this number as a sum of rationals with numerators equal to one and without repetitions (2/3 = 1/2 + 1/6 is correct but not 2/3 = 1/3 + 1/3, 1/3 is repeated).

The algorithm must be "greedy", so at each stage the new rational obtained in the decomposition must have a denominator as small as possible. In this manner the sum of a few fractions in the decomposition gives a rather good approximation of the rational to decompose.

2/3 = 1/3 + 1/3 doesn't fit because of the repetition but also because the first 1/3 has a denominator bigger than the one in 1/2 in the decomposition 2/3 = 1/2 + 1/6.

### Example:
(You can see other examples in "Sample Tests:")

```
decompose("21/23") or "21" "23" or 21/23 should return 

["1/2", "1/3", "1/13", "1/359", "1/644046"] in Ruby, Python, Clojure, JS, CS, Haskell, Go

"[1/2, 1/3, 1/13, 1/359, 1/644046]" in Java, CSharp, C++, Dart

"1/2,1/3,1/13,1/359,1/644046" in C, Swift, R
```

### Notes
1. The decomposition of 21/23 as

`21/23 = 1/2 + 1/3 + 1/13 + 1/598 + 1/897`

is exact but don't fulfill our requirement because 598 is bigger than 359. Same for

`21/23 = 1/2 + 1/3 + 1/23 + 1/46 + 1/69 (23 is bigger than 13) or 21/23 = 1/2 + 1/3 + 1/15 + 1/110 + 1/253 (15 is bigger than 13).`

2. The rational given to decompose could be greater than one or equal to one, in which case the first "fraction" will be an integer (with an implicit denominator of 1).

3. If the numerator parses to zero the function "decompose" returns [] (or "",, or "[]").

4. The number could also be a decimal which can be expressed as a rational.

### Example:
`0.6` in Ruby, Python, Clojure,JS, CS, Julia, Go

`"66" "100"` in Haskell, Java, CSharp, C++, C, Swift, Scala, Kotlin, Dart, ...

`0.67` in R.

# Help the bookseller !

A bookseller has lots of books classified in 26 categories labeled A, B, ... Z. Each book has a code `c` of 3, 4, 5 or more characters. The 1st character of a code is a capital letter which defines the book category.

In the bookseller's stocklist each code `c` is followed by a space and by a positive integer n (int n >= 0) which indicates the quantity of books of this code in stock.

For example an extract of a stocklist could be:

```
L = {"ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"}.
or
L = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"] or ....
```
You will be given a stocklist (e.g. : L) and a list of categories in capital letters e.g :

```
M = {"A", "B", "C", "W"} 
or
M = ["A", "B", "C", "W"] or ...
```

and your task is to find all the books of L with codes belonging to each category of M and to sum their quantity according to each category.

For the lists L and M of example you have to return the string (in Haskell/Clojure/Racket a list of pairs):

```
(A : 20) - (B : 114) - (C : 50) - (W : 0)
```
where A, B, C, W are the categories, 20 is the sum of the unique book of category A, 114 the sum corresponding to "BKWRK" and "BTSQZ", 50 corresponding to "CDXEF" and 0 to category 'W' since there are no code beginning with W.

If L or M are empty return string is `""` (Clojure and Racket should return an empty array/list instead).

### Note:
In the result codes and their values are in the same order as in M.

# Calculate the area of a regular n sides polygon inside a circle of radius r

### Write the following function:

```Dart
double areaOfPolygonInsideCircle(double circleRadius, int numberOfSides)
```

It should calculate the area of a regular polygon of `numberOfSides`, `number-of-sides`, or `number_of_sides sides` inside a circle of radius `circleRadius`, `circle-radius`, or `circle_radius` which passes through all the vertices of the polygon (such circle is called [circumscribed circle or circumcircle](https://en.wikipedia.org/wiki/Circumscribed_circle)). The answer should be a number rounded to 3 decimal places.

### Input :: Output Examples

```Dart
areaOfPolygonInsideCircle(3.0, 3) // returns 11.691

areaOfPolygonInsideCircle(5.8, 7) // returns 92.053

areaOfPolygonInsideCircle(4.0, 5) // returns 38.042
```

# Sums of Parts

Let us consider this example (array written in general format):

ls = [0, 1, 3, 6, 10]

Its following parts:

```Dart
ls = [0, 1, 3, 6, 10]
ls = [1, 3, 6, 10]
ls = [3, 6, 10]
ls = [6, 10]
ls = [10]
ls = []
```
The corresponding sums are (put together in a list): `[20, 20, 19, 16, 10, 0]`

The function `parts_sums` (or its variants in other languages) will take as parameter a list `ls` and return a list of the sums of its parts as defined above.

### Other Examples:
```Dart
ls = [1, 2, 3, 4, 5, 6] 
parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]

ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
parts_sums(ls) -> [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
```

### Notes

- Take a look at performance: some lists have thousands of elements.
- Please ask before translating.
