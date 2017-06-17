# PROC: passing procs
#
# a method named greeter, that takes no arguments and yields to a block.
def greeter
    yield
end

# a Proc, phrase, that puts "Hello there!".
phrase = Proc.new { puts "Hello there!"}

# Pass the Proc, phrase, to the greeter method as a block using &.
greeter(&phrase)
# >> Hello there!
