#Resources

#Dylan's Notes
##Intro to Recursion (INCOMPLETE)
https://github.com/doshea/basic_recursion

This module is rather short and needs something added to it at the end to make students use recursion more. The objective is to introduce students to recursion and talk about its pros and cons, particularly its "effects" on the call stack (it gets enormous).

Start out by having students make a very simply recursive function (your choice, we did a rocket countdown), and let it go infinite. At this point, talk about the need for not only a recursive case but also a base case. Fix the recursive function/method to work. Pat everyone on the back. Next, talk about factorial method and have the students code it (pseudo code it first if they seem lost). Then do the same with the fibonacci sequence.

Using the Ruby Profiler, show the run time and number of calls to each method. Show how the fibonacci method can be done using loops instead of recursion and how much faster it is and how many fewer calls it's doing. This is a downside of recursion! But talk about the benefits of recursion -- most branching recursion cannot be done with loops -- this is a good time to go over linear vs. branching recursion if you haven't already.

This module is INCOMPLETE, as it was done in about 2-2.5 hours the first time -- add additional recursion exercises (Project Euler problems? Other math problems) to make students use recursion without doing any object-oriented programming.

##Recursion and the HTML5 Canvas:
https://github.com/doshea/fractal_recursion

This is a second look at recursion, to follow up an initial introduction to the concept. It should take one morning or afternoon session, and is a partial code-along demonstration and transitions into a group project. The objectives are to reinforce the idea of recursion while introducing the HTML5 canvas. This is a difficult lab, but the visual feedback aspect is really interesting and students generally seem to like it -- it helps to break up the less visual Computer Science code-alongs.

Start out by talking about recursion again, and then introducing fractals as a form of branching recursion. Make sure to differentiate between linear and branching recursion, possibly showing the chain_reaction.mov as an example of branching recursion. Do a couple of example fractals on the board and show how they are made up of smaller versions of the same fractal. Students really need to get this before continuing.

This module begins with the instructor giving the blank page with the canvas element on it and an empty $(function(){}). The students play around with the canvas, drawing some lines and rectangles on it. Then, the instructor leads them through building the draw_line and draw_square helper functions, talking about the X, Y coordinate system in the canvas. Then, the student helps the students (as a class) to pseudo-code the recursive_square function, after which they split up into randomized groups of two to code it out.

Once students are reliably building the recursive squares, have them track how many squares they are creating with a global counter variable. Have them vary their square scale ratios and record the different numbers of squares for 0.25 - 0.65. They should notice the exponential growth in the number of squares created, showing how out-of-control branching recursion can get if a base case isn't reached quickly.