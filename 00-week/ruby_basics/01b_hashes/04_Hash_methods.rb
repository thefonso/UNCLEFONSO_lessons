# recall...

	secret_identities = { 'The Batman' => 'Bruce Wayne', 'Superman' => 'Clark Kent', 'Wonder Woman' => 'Diana Prince'}

# =====  Methods on a Hash  =====

	hash = { 'a' => 100, 'b' => 200 }

	hash.has_value?(100) # => true
	hash.has_value?(999) # => false

  # has_value?
  # has_key?
  
  # fetch
  secret_identities.fetch('Superman') # => "Clark Kent"
  
  # values_at
  
  # delete
  
  # first

