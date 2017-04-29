# LOAD external file via require 
#
#
# When you have code in one file that you want to use in another
# file, you load it by using "require"

# When you want to load a file that you've written, 
# you can give Ruby an absolute path to the file.

# Note:
Dir.pwd # => "/Users/aleph/UNCLEFONSO_live/00-week/ruby_basics"

# here we can include the external file 08_require_second that contains our "there" method...
require Dir.pwd + "/10_random_coolstuff/08_require_second"

def here
  'from 08_require_first.rb'
end

here    # => "from 08_require_first.rb"
there   # => "from 08_require_second.rb"
