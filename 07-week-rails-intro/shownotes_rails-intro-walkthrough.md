# RAILS OVERVIEW
ok, we're gonna build a basic app and in the process
I'll show you a high level overview of Rails and it's concepts.

We'll cover these concepts:

- Scaffolds
- Generators
- Models, Controllers and Views
- Routes
- ActiveRecord Associations
- Form helpers
- Partials
- Basic Authentication

## check requirements:

Note: Make sure these are installed. git, ruby, rails, gem, and bundler. ( check version with -v flag)



## start your cool blog

```
rails _4.0.4_ new coolblog --no-ri --no-rdoc

cd coolblog

bundle install
```

**gemfile**

NOTE: those of you from the world of javascript...

Gemfile is like Package.json

and bundle install is like npm install

## run server

```
rails s
```

Localhost:3000

Now you are ready to develop

# what is a controller?

A controller is the C in MVC Model View Controller
a controller decides between the model and the view what data the view will receive from the model.

The model is responsible for dealing with your data weather you have an API or a database or whatever.

now in the controllers folder you have a **application_controller** every controller you make will extend this one.

in the views folder there is a layouts folder and inside that you have **application.html.erb**

Now remember that **.erb** that extension stands for embedded ruby. Open this file and notice the **<%= yield %>** all of our views kinda feed into or goes through this yield

Let's create our first controller...

## First controller(10:00)
$ rails g controller Posts

(discuss what was generated)

## posts_controller.rb
note: Posts Controller is extending ApplicationController

```
def index

end
```

now create **views/post/index.html.erb**

```
<h1>Index page</h1>
```

so now where going to change our default landing page to a new route

**config/routes.rb**

NOTE: routes.rb is where all our page urls or our ROUTES will be set up

uncomment "root 'welcome#index'"

note: this line looks at the welcome controller and the index method

we don't have a welcome controller we have a post so we'll change it

```
root 'posts#index'
```
Now look at the default page and see it has changed

## Pages Controller(14:35)

$ rails g controller pages

**pages_controller.rb**

```
def about
    @title = ""
end
```


**routes.rb**

get 'about' => 'pages#about'

**pages_controller.rb**

```
def about
    @title = "About Us"
    @content = "Welcome to the about page"
end
```

**about.html.erb**

```
<h1><%= @title %></h1>
<h1><%= @content %></h1>
```

save reload ... notice we see in view on page now

We now want to build out CRUD functionality, we need more methods...

```
def index
    @posts = Post.all
end

def new

end

```

the "def new" action will house our form that we'll use to create NEW post with.

Ultimately we'll have a series of CRUD actions def CREATE def UPDATE def DESTROY and as well....

we need all these routes. we can get them easily...

## Resource routes

resource :posts (talk about resource routes in rake routes)

rake routes (see all the routes)

Now that we have the routes let's go back and build our form for our NEW action...

## create views/posts/NEW.html.erb 

```
<h1>Add Post<h1>
<%= form_for :post, url: post_path do |f| %>
	<p>
		<%= f.label :title %><br>
		<%= f.text_field :title %>
	</p>
	<p>
		<%= f.label :body %><br>
		<%= f.text_area :body %>
	</p>
	<p>
		<%= f.submit %>
	<p>
<% end %>
```
Now let's build the CREATE action

```
def index
    @posts = Post.all
end

def new

end

def create
	render text: params[:post].inspect 
end

```
Now let's create a new post and see what happens

afterwards we'll go back and comment out that line in our def create

```
...
def create
	#render plain: params[:post].inspect
end

```
NOTE: what we saved is now saved inside the sql file based database

## (23:30) Create Model to save post
rails g model Post title:string body:text

This gives us a new file **models/post.rb** 
The generator also builds a migration file for us.

peak inside this migration file and notice the **:title** and **:body**

we'll use this file to talk to our database

But first we need to run the migration...

### rake db:migrate


**index.html.erb**

```
<h1>Blog Posts</h1>
<% @posts.each do |post| %>
    <h3><%= post.title %></h3>
    <p><%= post.body %></p>
<% end %>
```

Now go back to 

**post_controller.rb**

```
def create
	@post = Post.new(post_params)
	@post.save
	redirect_to @post
end

private def post_params
	params.require(:post).permit(:title, :body)
end
```

try to save a new post now....error

let's fix this error

**post_controller.rb**

```
def show
	@post = Post.find(params[:id])
end
```

**show.html.erb**

```
<h2><%= @post.title %></h2>
<p><%= @post.body %></p>
```

now to list all our post

**posts_controller**

```
def index
	@post = Post.all
end
```

**index.html.erb**

```
<h1>Blog Posts</h1>
<% @post.each do |post| %>
	<h3><%= post.title %></h3>
	<p><%= post.body %></p>
<% end %>
```

## get bootstrap cdn

```
https://www.bootstrapcdn.com

https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css
```
now open

**views/layouts/application.html.erb**

```
add this line under the title tags
<%= stylesheet_link_tag 'https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' %>
...

```
save and reload the app

now visit...

[https://getbootstrap.com/docs/4.0/examples/starter-template/](https://getbootstrap.com/docs/4.0/examples/starter-template/)

```
1. grab the navbar code
2. paste it inside your <body> tags
```

```
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" placeholder="Search" aria-label="Search" type="text">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
    
    ...
```

# Change navbar

```
- "project name" becomes "CoolBlog"
```

change link tags to link_to helper

```
<ul class="nav navbar-nav">
    <li><%= link_to "Home", home_path %></li>
</ul>
<ul class="nav navbar-nav navbar-right">
    <li><%= link_to "Create Post", new_post_path %></li>
</ul>

```

note: now path won't work so we need to edit routes...

**routes.rb**

```
root 'post#index', as: 'home'

get 'about' => 'pages#about', as: 'about'
```

Minor adjustment can be added to the visual look,
wrap the yield in a container div.

**application.html.erb**

```
<div class="container">
    <%= yield %>
</div>
```

next add a bootstrap class to the form on new.html.erb

**views/posts/new.html.erb**

```
<%= f.label :title %><br>
<%= f.text_field(:title, {:class => 'form-control'}) %>
...
<%= f.text_field(:body, {:class => 'form-control'}) %>
...
<%= f.submit({:class => 'btn btn-primary'}) %>
```

## Validation

**models/post.rb**

```
validates :title, presence: true,
						length: {minimum: 5}
```

**posts_controller**

```
def create
    @post = Post.new(post_params)
	
    if(@post.save)
        redirect_to @post
    else
        render 'new'
    end
end
```

**views/posts/new.html.erb**

```
right at the top under "form_for"...
<% if @post.erros.any? %>
    <% @post.errors.full_messages.each do |msg| %>
        <div class="alert alert-danger"><%= msg %></div>
    <% end %>
<% end %>

(chat about what this does)

```

we should get an error in the browser from rails.
Notice how rails will help us when things break?
Now let's fix it.

**posts_controller.rb**

```
...

def new
    @post = Post.new
end

```

Now add a post and watch the validation work...

**index.html.erb**

```
<% @posts.each do |post| %>
<div class="well">
    ...
    <%= link_to "Read More", post_path(post), :class => 'btn btn-default' %>
</div>
```

# Editing Posts


navigate to the show page...goto "localhost:3000/posts/1

Let's make an edit link

**show.html.erb**

```
<p><%= @post.body %></p>
...
<hr>
<%= link_to "Edit", edit_post_path(@post), :class => 'btn btn-default' %>
```
Try the "edit" button in your browser...it will fail.

Let's fix that.

**posts_controller.erb**

```
def create
 ...
end

def edit
    @post = Post.find(params[:id])
end
```

create new file...

**views/posts/edit.html.erb**

```
1. copy new.html.erb into this file..then edit the contents as so.

<h1>Edit Post</h1>
<%= form_for :post, url: post_path(@post), method: :patch do|f| %>
...
```
in your browser...localhost:3000/posts/1/edit

change the content and press "Save Post"

You should get an error

Let's add our update action

**posts_controller.rb**

```
def edit
    ...
end

def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
        redirect_to @post
    else
        render 'edit'
    end
end

```

Now try to edit a post same as before....success!

# Delete Post
**posts_controller.rb**

```
def update
...
end

def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_path
end
```

let's add a link for the delete action

**show.html.erb**

```
...
<%= link_to "Delete", post_path(@post),
                    method: :delete,
                    data: {confirm: 'Are you sure?'},
                    :class => 'btn btn-danger' %>
```
In your browser...create a new post, delete the new post...great!

# Comments
Now we want to be able to submit a comment and read all the post associated with the comment

## Comment model
$ rails g model Comment username:string body:text post:references

$ rake db:migrate

now open up the model file.
**models/comment**

```
note the "belongs_to :post
```

this defines a relationship....a comment "belongs to" a post

Now open up your post model

**models/posts**

```
has_many :comments
...
```

Now add routes

**routes**

```
...
resources :posts do
    resources :comments
end
```

Now let's see the new route run ...

$ rake routes

Note how the new route is nested

# Comments Controller

```
$ rails g controller Comments
```

**views/posts/show.html.erb**

```
...
<hr>
<h3>Add Comment</h3>
<%= form_for([@post, @post.comments.build]) do |f| %>
    <p>
        <%= f.label :username %><br>
        <%= f.text_field(:username, {:class => 'form-control'}) %>
    </p>
    <p>
        <%= f.label :body %><br>
        <%= f.text_field(:body, {:class => 'form-control'}) %>
    </p>
    <p>
        <%= f.submit({:class => 'btn btn-default'})%>
    </p>
<% end %>
```

**comments_controller.rb**

```
def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post+path(@post)
end

private def comment_params
    params.requre(:comment.permit(:username, :body)
end
```

**posts/show.html.erb**

```
...
<hr>

<h3>Comments</h3>
<% @post.comments.each do |comment| %>
    <div class="well">
    <p><strong><%= comment.username %></strong>: <%= comment.body %></p>
    </div>
<% end %>
<h3> Add Comment</h3>
...
```

Add a comment

In your browser...localhost:3000/post/1

# Delete COMMENTS 55:40

we'll start by breaking up show.html.erb into different views using rails partials

**views/comments/_comments.html.erb**

```
(from post/show.html.erb cut and paste this block of code)
 <h3>Comments</h3>
 <% @post.comments.each do |comment| %>
     <div class="well">
     <p><strong><%= comment.username %></strong>: <%= comment.body %></p>
     </div>
 <% end %>
```

**views/comments/_form.html.erb**

```
(cut and past from show.html.erb)

<h3>Add Comment</h3>
<%= form_for([@post, @post.comments.build]) do |f| %>
    <p>
        <%= f.label :username %><br>
        <%= f.text_field(:username, {:class => 'form-control'}) %>
    </p>
    <p>
        <%= f.label :body %><br>
        <%= f.text_field(:body, {:class => 'form-control'}) %>
    </p>
    <p>
        <%= f.submit({:class => 'btn btn-default'})%>
    </p>
<% end %>
```

**show.html.erb**

```
...
<hr>

<%= render  'comments/comments' %>
<%= render  'comments/form' %>
```

**views/comments/_comments.html.erb**

```
(from post/show.html.erb cut and paste this block of code...
and add the link_to '[X]')

 <h3>Comments</h3>
 <% @post.comments.each do |comment| %>
     <div class="well">
     <p><strong><%= comment.username %></strong>: <%= comment.body %>
     <%= link_to '[X]', [comment.post, comment],
        method: :delete,
        data: {confirm: 'Are you sure?'}
     %>
     </p>
     </div>
 <% end %>
```

in the browser, test the 'X'...it should give an error.

let's fix that...

**comments_controller.rb**

```
...
def destroy
    @post = Post.find(params[:post_id]
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post+path(@post)
end
```

in your browser, test it again...success!

Let's make it so the general public can't just delete whatever they like on your blog.

# BASIC Authentication

**post_controller.rb**

```
class PostController < ApplicationController
    http_basic_authenticate_with name: "unclefonso", password:"1234", except:[:index, :show]
...
```

**comments_controller.rb**

```
class CommentsController < ApplicationController
    http_basic_authenticate_with name: "unclefonso", password:"1234", only:[:destroy]
```

Now RELOAD and visit those routes...

localhost:3000/post/new

localhost:3000/post/1

localhost:3000/post/1/edit

... notice how the app blocks you from access. ^_^

Now login using your credentials.

localhost:3000/post/new

Basic Auth done.

# CONCLUSION
This ends the high level basic Rails overview

Congrats on working through all of it!


http://guides.rubyonrails.org/v4.0/getting_started.html


---
Compiled and edited by Alfonso Rush