# If we wanted to pass a bunch of options to a method, 
# we might use a hash table.
def same_case( your_string , options = Hash.new )
  return your_string.upcase if options[:upcase]   == true
  return your_string.upcase if options[:downcase] == false
  your_string.downcase
end
same_case('UPPER lower')                          # => "upper lower"
same_case('UPPER lower', { :upcase   => false } ) # => "upper lower"
same_case('UPPER lower', { :downcase => true  } ) # => "upper lower"
same_case('UPPER lower', { :downcase => false } ) # => "UPPER LOWER"
same_case('UPPER lower', { :upcase   => true  } ) # => "UPPER LOWER"


# The problem is that this looks an awful lot like a block.
# This is such a common use case that we drop the parens and block braces
# and rewrite it thusly.

same_case 'UPPER lower'                       # => "upper lower"
same_case 'UPPER lower' , :upcase   => false  # => "upper lower"
same_case 'UPPER lower' , :downcase => true   # => "upper lower"
same_case 'UPPER lower' , :downcase => false  # => "UPPER LOWER"
same_case 'UPPER lower' , :upcase   => true   # => "UPPER LOWER"