### Remember: WHILE executes code while condition is true
#
# $i = 0
# $num = 5
#
# while($i < $num)  do
#   puts("Inside while loop i = #$i" )
#   $i += 1
# end  
#
# Now we have seen the above version of while loops. Another widely used is ... 
#
# begin 
#   <code> 
# end while <code>
#
# However Matz, the creator of ruby prefers for us NOT to use this
# ( http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/6745 )
# but instead do...
#
# loop do
#  ...
#  break if <code>
# end
#
#### review modifier.md

$i = 0
$num = 5

loop do
 puts("Inside the loop i = #$i" )
  $i +=1
 break if $i < $num
end

### can be used inline also.
# Comment the lines above
# Uncomment the lines below
#..run this from cli as - ruby 01_while_modifier.rb
# Don't worry about the def ... end structure. We'll get into that next.
 
# quest = "name" # !> assigned but unused variable - quest
# ans = "yes" # !> assigned but unused variable - ans
# def question(quest, ans)
#   puts quest # => "name"
#
#   puts "Try Again!" while gets.chomp != ans
#
#   puts "good job"
# end
#
# question("name","yes")  
