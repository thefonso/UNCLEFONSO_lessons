require 'ruby-prof'
# Profile the code
RubyProf.start

# *** Advanced Recursion***
#######################################################################################
# Problem & Solution: (http://en.wikipedia.org/wiki/Towers_of_Hanoi):
#
# Recursive solution
#
# A key to solving this puzzle is to recognize that it 
# can be solved by breaking the problem down into a collection of smaller problems 
# and further breaking those problems down into even smaller problems until a solution is reached. 
# For example:
#   * label the pegs A, B, C — these labels may move at different steps
#   * let n be the total number of discs
#   * number the discs from 1 (smallest, topmost) to n (largest, bottommost)
# To move n discs from peg A to peg C:
#   * move n−1 discs from A to B. This leaves disc n alone on peg A
#   * move disc n from A to C
#   * move n−1 discs from B to C so they sit on disc n
# The above is a recursive algorithm: to carry out steps 1 and 3, apply the same algorithm again for n−1.
# The entire procedure is a finite number of steps, 
# since at some point the algorithm will be required for n = 1.
# This step, moving a single disc from peg A to peg B, is trivial.
#
#######################################################################################

# Solution Guide:

# Let's think about what the output would be before we think about the code

# 1 Disk
# - move from A to C

# 2 Disks
# - move 0 from A to B
# - move 1 from A to C
# - move 0 from B to C

# 3 Disks
# part 1:
# - move 0 from A to C
# - move 1 from A to B
# - move 0 from C to B
# part 2:
# - move 2 from A to C
# part 3: 
# - move 0 from B to A
# - move 1 from B to C
# - move 0 from A to C

# Now we can refactor the three parts of the 3 Disks solution

# 3 Disks
# - part1: move top 2 disks from A to B (via intermediate C)
# - part2: move 2 from A to C
# - part3: move top 2 disks from B to C (via intermediate A)

# 4 Disks
# - top 3 disks from A to B
# - move 3 from A to C
# - top 3 disks from B to C

# 5 Disks
# - top 4 disks from A to B
# - move 4 from A to C
# - top 4 disks from B to C

# Coding the solution

# At first all we need is the id of the bottom disk and the two peg labels (for 'from', 'to')
# 
# def hanoi(0, A, C)
#   puts "moving disk 0 from A to C" # For now we'll hardcode the labels
# end

# def hanoi(1, A, C)
#   puts "moving disk 0 from A to B"
#	puts "moving disk 1 from A to C"
#   puts "moving disk 0 from B to C"
# end

# def hanoi(2, A, C)
#   # part 1:
#   puts "moving disk 0 from A to C" # looks like hanoi(1, A, C) with B and C switched
#	puts "moving disk 1 from A to B"
#   puts "moving disk 0 from C to B"
#   # part 2:
#   puts "moving disk 2 from A to C"
#   # part 3:
#   puts "moving disk 0 from B to A" # looks like hanoi(1, A, C) with A and B switched
#	puts "moving disk 1 from B to C"
#   puts "moving disk 0 from A to C"
# end

# Let's see how we can refactor.  To keep track of peg order we could pass three labels instead of two:

# def hanoi(disk_id, peg1, peg2, peg3)
#   # part 1:
#   puts "moving disk #{disk_id-2} from #{peg1} to #{peg3}"
#	puts "moving disk #{disk_id-1} from #{peg1} to #{peg2}"
#   puts "moving disk #{disk_id-2} from #{peg3} to #{peg2}"
#   # part 2:
#   puts "moving disk #{disk_id} from #{peg1} to #{peg3}"
#   # part 3:
#   puts "moving disk #{disk_id-2} from #{peg2} to #{peg1}"
#	puts "moving disk #{disk_id-1} from #{peg2} to #{peg3}"
#   puts "moving disk #{disk_id-2} from #{peg1} to #{peg3}"
# end

# And rewrite using recursion:

# def hanoi(disk_id, peg1, peg2, peg3)
#	hanoi(disk_id-1, peg1, peg3, peg2) # part 1
#   puts "moving disk #{disk_id} from #{peg1} to #{peg3}" # part 2
#   hanoi(disk_id-1, peg2, peg1, peg3) # part 3
# end

# Termination Conditions: if we look carefully, the recusive part is only needed for stacks with more than one disk, so:
# def hanoi(disk_id, peg1, peg2, peg3)
#	hanoi(disk_id-1, peg1, peg3, peg2) if disk_id > 0
#   puts "moving disk #{disk_id} from #{peg1} to #{peg3}" 
#   hanoi(disk_id-1, peg2, peg1, peg3) if disk_id > 0
# end

# Moves n disks from peg1 to peg3
def hanoi(disk_id, peg1, peg2, peg3)
  hanoi(disk_id-1, peg1, peg3, peg2) if disk_id > 0     #move stack up to disk_id-1 from peg1 to peg2
  puts "step #{step}: moving disk #{disk_id} from #{peg1} to #{peg3}" #move disk_id from peg1 to peg3
  hanoi(disk_id-1, peg2, peg1, peg3) if disk_id > 0     #move stack up to disk_id-1 from peg2 to peg3
end

hanoi(2, "A", "B", "C")

result = RubyProf.stop

# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)