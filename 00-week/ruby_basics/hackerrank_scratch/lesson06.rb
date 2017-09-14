# DESCRIPTION
# Given a string, S, of length N that is indexed from 0 to N-1,
# print its even-indexed and odd-indexed characters as 2 space-separated
# strings on a single line (see the Sample below for more detail).
# Sample Input
#
# 2
# Hacker
# Rank
#
# Sample Output
#
# Hce akr
# Rn ak
# Explanation

# ================================

# 1. receive string from STDIN
# ruby lesson06.rb 2 Hacker Rank

# 2. feed strings one and two into array
# take each array item and "act" on it

# 3. action: analyze array item and extract even indices into a value
# and odd indices into another value

# 4. action: add odd + even into new string
# require 'pry'


class SomeName
  attr_reader :t, :one, :two

  def initialize(t, one, two)
    @t    = t
    @one  = one
    @two  = two
  end

  def split_array
    one = @one.to_s
    two = @two.to_s
    @myArray = [one,two]
    @myArray.each do |item|
      work_on_string item
    end
  end

  def work_on_string (value)
    newArray = value.split("")
    count = newArray.length
    odd = ""
    even = ""
    count.times do |index|
      if index %2 == 0
        even = even + newArray[index]
      else
        odd = odd + newArray[index]
      end
    end
    puts even + " " + odd
  end

end

# somename = SomeName.new ARGV[0], ARGV[1], ARGV[2]
somename = SomeName.new 2, "Hacker", "Rank"

somename.split_array
