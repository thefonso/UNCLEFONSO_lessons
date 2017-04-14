# LOOPS: BREAK, NEXT

# BREAK Terminates the most internal loop.

for i in 0..5
  if i > 2 then
     break
  end
  puts "BREAK: Value of local variable is #{i}"
end

# NEXT Jumps to next iteration of the most internal loop.

for i in 0..5
  if i < 2 then
     next
  end
  puts "NEXT: Value of local variable is #{i}"
end

# GO-TO-LABS
