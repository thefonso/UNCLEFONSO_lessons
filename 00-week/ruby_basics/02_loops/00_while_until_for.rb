# While, Until, For
# TODO examples of semicolon, backspace, newline forms

### WHILE loop's are separated from code by the reserved word do, a newline, a backslash \, or a semicolon. 
#
### WHILE executes code while condition is true

$i = 0
$num = 5

while($i < $num)  do
   puts("Inside while loop i = #$i" )
   $i += 1
end  

### UNTIL conditional is separated from code by the reserved word do, a newline, or a semicolon.
#
### UNTIL executes code until condition is true

$i = 0
$num = 5

until($i > $num)  do
   puts("Inside until loop i = #$i" )
   $i +=1;
end  

### FOR loops are separated from code by the reserved word do, a newline, or a semicolon.
#
### FOR loops Execute code once for each element in expression.

for i in 0..5
   puts "For loop local variable i value is #{i}"
end


