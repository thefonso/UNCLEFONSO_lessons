require 'sinatra'

# When you want to serve up static pages (things that
# don't change, that you aren't generating), you can
# put them in a directory named public. So in the code
# below, The image at /cats.png is located on
# our file system at public/cats.png, and
# Sinatra will look there and find it.


get '/' do
  # We'll use markdown http://daringfireball.net/projects/markdown/
  # to render this content. Sinatra uses the rdiscount
  # gem to do that by default, so we have it in our Gemfile.
  markdown :cats
end
