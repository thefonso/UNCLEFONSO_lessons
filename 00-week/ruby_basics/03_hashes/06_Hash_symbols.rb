#=====  About Symbols =====

#Using symbols will speed up your hash. Let’s talk about why…

# Every instance of a String is a new object, 
# notice they have different object ids.
'this is a string'.object_id # => 70247714414700
'this is a string'.object_id # => 70247714414240

# Every instance of a Symbol is the same object,
# notice they have the same object id.
:this_is_a_symbol.object_id # => 362888
:this_is_a_symbol.object_id # => 362888

# This makes symbols easy to test for equality. For a symbol you just check
# if it is the same object, but for a String, you must check that
# each character is the same character (iterate through the entire
# string) this gives symbols a performance boost for checking
# equality.


# you typically use symbols in a situation where you wish to use
# a constant, but want it to be named, like a String

# SO now we can REWRITE our secret_identities Hash with symbols like so...

# in Hash literal notation
secret_identities = { 
	:The_Batman => 'Bruce Wayne', 
	:Superman => 'Clark Kent', 
	:Wonder_Woman => 'Diana Prince', 
}

# OR in Hash.new notation

secret_identities = Hash.new

secret_identities[:The_Batman] = 'Bruce Wayne'
secret_identities[:Superman] = 'Clark Kent'
secret_identities[:Wonder_Woman] = 'Diana Prince'

