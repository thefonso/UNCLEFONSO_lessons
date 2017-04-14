
#=====  Notation  =====

# Hash literal notation
secret_identities = { 
  'The Batman' => 'Bruce Wayne', 
  'Superman' => 'Clark Kent', 	
  'Wonder Woman' => 'Diana Prince'
}

#Hash.new notation
secret_identities = Hash.new
secret_identities # => {}
secret_identities['The Batman'] = 'Bruce Wayne'
secret_identities['Superman'] = 'Clark Kent'
secret_identities['Wonder Woman'] = 'Diana Prince'
secret_identities # => {"The Batman"=>"Bruce Wayne", "Superman"=>"Clark Kent", "Wonder Woman"=>"Diana Prince"}
