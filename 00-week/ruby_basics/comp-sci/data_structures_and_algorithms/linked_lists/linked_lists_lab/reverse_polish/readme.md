### Prerequisites

- Stack

### Intro
"The reverse Polish scheme was proposed in 1954 by Burks, Warren, and Wright[1] and was independently reinvented by F. L. Bauer and E. W. Dijkstra in the early 1960s to reduce computer memory access and utilize the stack to evaluate expressions"

### Process
"In Reverse Polish Notation (RPN) the operators follow their operands; for instance, to add 3 and 4, one would write "3 4 +" rather than "3 + 4". If there are multiple operations, the operator is given immediately after its second operand; so the expression written "3 − 4 + 5" in conventional notation would be written "3 4 − 5 +" in RPN: first subtract 4 from 3, then add 5 to that. An advantage of RPN is that it obviates the need for parentheses that are required by infix. While "3 − 4 * 5" can also be written "3 − (4 * 5)", that means something quite different from "(3 − 4) * 5". In postfix, the former could be written "3 4 5 * −", which unambiguously means "3 (4 5 *) −" which reduces to "3 20 −"; the latter could be written "3 4 - 5 *" (or 5 3 4 - *, if you wish to keep similar formatting), which unambiguously means "(3 4 -) 5 *"."

### Algorithm
##### Postfix algorithm
The algorithm for evaluating any postfix expression is fairly straightforward:

- While there are input tokens left
  - Read the next token from input.
  - If the token is a value
    - Push it onto the stack.
  - Otherwise, the token is an operator (operator here includes both operators, and functions).
     - It is known a priori that the operator takes **n** arguments.
     - If there are fewer than **n** values on the stack
       - **(Error)** The user has not input sufficient values in the expression.
     - Else, Pop the top **n** values from the stack.
     - Evaluate the operator, with the values as arguments.
     - Push the returned results, if any, back onto the stack.
- If there is only one value in the stack
  - That value is the result of the calculation.
- If there are more values in the stack
  - **(Error)** The user input has too many values.

##### Example
The infix expression "5 + ((1 + 2) * 4) − 3" can be written down like this in RPN:
  
    5 1 2 + 4 * + 3 -

The expression is evaluated left-to-right, with the inputs interpreted as shown in the following table (the ''Stack'' is the list of values the algorithm is "keeping track of" after the ''Operation'' given in the middle column has taken place):


| Input | Operation | Stack  | Comment|
|---- --|:----------|:-------|:-------|
|   5   | Push value | 5 |
|   1   | Push value | 1<br />5 |
|   2   | Push value | 2<br />1<br />5 |
|   +   | Add | 3<br />5 | Pop two values (1, 2) and push result (3)
|   4   | Push value| 4<br />3<br />5 |
|   *   | Multiply | 12<br />5 | Pop two values (3, 4) and push result (12)
|   +   | Add | 17 | Pop two values (5, 12) and push result (17)
|   3   | Push value | 3<br />17 |
|   −   | Subtract | 14 | Pop two values (17, 3) and push result (14)
|       | Result | (14) |

When a computation is finished, its result remains as the top (and only) value in the stack; in this case, 14.

The above example could be rewritten by following the "chain calculation" method described by HP for their series of RPN calculators:

<blockquote>As was demonstrated in the Algebraic mode, it is usually easier (fewer keystrokes) in working a problem like this to begin with the arithmetic operations inside the parentheses first.</blockquote>

:1 2 + 4 * 5 + 3 −
