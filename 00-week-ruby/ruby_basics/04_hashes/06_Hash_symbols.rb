#=====  About Symbols =====

#Using symbols will speed up your hash. Let’s talk about why…

'this is a string'.object_id # => 70339115697540
'this is a string'.object_id # => 70339115697140

:this_is_a_symbol.object_id # => 420328
:this_is_a_symbol.object_id # => 420328



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

