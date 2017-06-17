class CreatePosts < ActiveRecord::Migration
  
	#this defines the upstream behavior of this migration
	#i.e. the step in which you are "building" the database or schema
	def up
		#a block that creates our table and its columns
		create_table :posts do |t|
			#this means for the table (t) add a column called "title" of type "string"
			t.string :title
			#this means for the table (t) add a column called "body" of type "text"
			t.text :body
			#this means add a timestamps column 
			t.timestamps
		end

	#seed data
	#this preloads the database with sample posts/data
	Post.create(title: "My first post", body: "So begins my blogging career")
	Post.create(title: "How to code", 
	        body: "1. Stare at screen for hours. 2. Type a few lines. 3. See error message. 4. Bang head against wall.")
	Post.create(title: "How to write blog posts", body: "Very carefully")

	end
 
	#this is the opposite action in case the migration is being rollback
	def down
		drop_table :posts
	end

end
