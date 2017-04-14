# HASH: methods  
#
# recall...

	secret_identities = { 'The Batman' => 'Bruce Wayne', 'Superman' => 'Clark Kent', 'Wonder Woman' => 'Diana Prince'}

# =====  Methods on a Hash  =====

	hash = { 'a' => 100, 'b' => 200 }

	hash.has_value?(200) # => true
	hash.has_value?(9) # => false

  # .has_value?
   hash.has_key?('c') # => false
  
  # fetch
  secret_identities.fetch('Superman') # => "Clark Kent"
  secret_identities.has_key?('Superman') # => true

  secret_identities.values_at 'The Batman' # => ["Bruce Wayne"]
  
  secret_identities.delete 'The Batman' # => "Bruce Wayne"

  secret_identities # => {"Superman"=>"Clark Kent", "Wonder Woman"=>"Diana Prince"}
  
  secret_identities.first # => ["Superman", "Clark Kent"]

