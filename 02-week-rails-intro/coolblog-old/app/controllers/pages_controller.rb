class PagesController < ApplicationController
  def about
    @title = "About Us"
    @content = "Welcome to my blog"
  end
end
