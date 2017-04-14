# ### Recall: WHILE executes code while condition is true

$i = 0
$num = 5

while($i < $num)  do
  puts("Inside while loop i = #$i" )
  $i += 1
end  

# # Now we have seen the above version of while loops. Another widely used variation is ... 

begin 
  <code> 
end while <condition>

# # However Matz, the creator of ruby prefers for us NOT to use this variant...
# # ( http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/6745 )
# # but instead do...

loop do
 ...
 break if <code>
end

# #### review modifier.md

$i = 0
$num = 5

loop do
 puts("Inside the loop i = #$i" )
  $i +=1
 break if $i < $num
end


