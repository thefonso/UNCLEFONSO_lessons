# Now that we know how methods accept blocks using the yield keyword, 
# let's define our own method and pass it a block!

def double(numb)
 yield numb
end

double(7){|numb| numb *2}