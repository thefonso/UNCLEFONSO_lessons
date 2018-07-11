  #Counts down from 'num'
  def countdown(num)
    while num > 0
     puts num-=1
    end
   	puts "Blastoff!"
  end

  #Recursive countdown
  def countdown_r(num)
    num > 0 ? countdown(num-1) : "Blastoff"
  end

  #will throw: "stack level too deep (SystemStackError)"
  def infinite_method
  	infinite_method
  end

  puts countdown_r(10)


#Other Examples

  #making an 'add' method
  def compute_sum(num1,num2)
    while num2>0 #increment the first number until the second number hits zero
      num1+=1
      num2-=1
    end
    num1 #return the first number
  end  

  #making an 'add' method recursively
  def compute_sum_r(num1,num2)
    num2>0 ? compute_sum(num1+1,num2-1) : num1
  end
