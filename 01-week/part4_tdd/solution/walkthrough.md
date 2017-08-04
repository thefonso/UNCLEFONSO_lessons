

```
touch Gemfile
```
add rubygems as the gem source

```
source :rubygems
```

open browser to rubygems.com search for "sinatra" add it to gem file

```
gem 'sinatra', '~> 2.0'
#note 1.2.6
```
grab rspec as well

```
gem 'rspec', '~> 3.6'
#note 2.6.0
```

bundle install the gems

```
bundle install
```

this is how we will run our test
```
$ bundle exec rspec spec --colour --fail-fast
```

follow the test request...

- create main.rb and require sinatra

```
touch main.rb
require 'sinatra'

```

Note: Run Sinatra (can use suggested test messages"
```
ruby main.rb
```

- open Gemfile

```
gem 'rack-test', '~> 0.7.0'
#note 0.6.0
bundle install
```
