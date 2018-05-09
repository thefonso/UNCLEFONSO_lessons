# HASH: methods  
#
# recall...we have a hash of superheroes

	secret_identities = { 'The Batman' => 'Bruce Wayne', 'Superman' => 'Clark Kent', 'Wonder Woman' => 'Diana Prince'}

# =====  Let's Explore Methods on a Hash  =====
# First let's start with a new hash like so:

	hash = { 'a' => 100, 'b' => 200 }

  # we have a method called .has_value?
  # we can use it to check existence of a value in our hash
	hash.has_value?(200) # => true
	hash.has_value?(9) # => false
  
  # .has_key?
  hash.has_key?('c') # => false
  
  # fetch
  secret_identities.fetch('Superman') # => "Clark Kent"
  
  secret_identities.has_key?('Superman') # => 

  secret_identities.values_at 'The Batman' # => 
  
  secret_identities.delete 'The Batman' # => 

  secret_identities # => 
  
  secret_identities.first # => 

  # for more hash methods go to rubydoc.org here http://ruby-doc.org/core-2.5.0/Hash.html
