### Instructional Component
Start out by talking about recursion again, and then introducing fractals as a form of branching recursion. Make sure to differentiate between linear and branching recursion, possibly showing the chain_reaction.mov as an example of branching recursion. Do a couple of example fractals on the board and show how they are made up of smaller versions of the same fractal. Students really need to get this before continuing.

This module begins with the instructor giving the blank page with the canvas element on it and an empty `$(function(){})`. The students play around with the canvas, drawing some lines and rectangles on it. Then, the instructor leads them through building the `draw_line` and `draw_square` helper functions, talking about the X, Y coordinate system in the canvas. Then, the student helps the students (as a class) to pseudo-code the `recursive_square` function, after which they split up into randomized groups of two to code it out.

Once students are reliably building the recursive squares, have them track how many squares they are creating with a global counter variable. Have them vary their square scale ratios and record the different numbers of squares for 0.25 - 0.65. They should notice the exponential growth in the number of squares created, showing how out-of-control branching recursion can get if a base case isn't reached quickly.

### The Why

### Potential Student Misunderstandings

### Ways to assess students understanding of the material

### Single takeaway