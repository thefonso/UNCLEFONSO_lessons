configure :production, :development do
	#parses the network connection response
	db = URI.parse('postgres://localhost/sinatra_blog_development')
 
 	#configuration info
	ActiveRecord::Base.establish_connection(
			:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			:host     => db.host,
			:username => db.user,
			:database => db.path[1..-1],
			:encoding => 'utf8'
	)

end