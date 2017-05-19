## My Amazing First App

We're going to modify this Ruby/Sinatra, HTML and CSS application to get an idea
of what web development is all about. The aim is for you to publish your very
own first web application to the web by the end of play.

# Install

* Create a folder to use for your upcoming project work, I suggest /projects

```
    cd ~
    mkdir projects
    cd projects
```

* Fork this repo by clicking the 'fork' button above
* Clone your forked repository, the URL is on your new github page.

```
    git clone https://github.com/whoever/MyAmazingFirstApp.git
```

* Change into your new project folder

```
    cd MyAmazingFirstApp
```

* Install bundler

```
    sudo gem install bundler --no-ri --no-rdoc
```

* Install the ruby gems required for the application

```
   bundle
```

* Sign up for Heroku: https://id.heroku.com/signup
* Setup Heroku toolbelt: https://toolbelt.heroku.com
* Login to Heroku by typing:

```
    heroku login
```

* Create an app on Heroku using:

```
    heroku create
```

* Make a note of the URL it gives you. Will be something like
http://cool-bananas-922.herokuapp.com.
* Push the example app from your cloned repository to your heroku repository:

```
    git push heroku master
```
* Cut+paste your heroku URL into your favourite web browser. You should see
the example app.
* Sign up for Twilio and follow the instructions: https://www.twilio.com/try-twilio.
* Log into your account screen and make a note of the Account SID and the Auth
Token. You'll need these to make your app work.

# Development cycle

You should work through the TODO list below, using the following methodology:

1. Run the example application using the following command. You should see the web application running locally in your browser at
http://localhost:4567.

```
    ruby my_amazing_web_app.rb
```

2. Make a change locally in your text editor.

3. If you make a change to the my_amazing_web_app.rb, you'll need to restart the
server. You do this by killing the process using CTRL+C in your terminal window.

4. Once you're happy with your change, save your changes to your local repo
using the following commands:

```
    git add .
    git commit -m "Write down briefly what you changed in here"
    git push heroku master
```

5. Test your changes on the Heroku URL you remembered from before. Make sure it
worked!

6. At the end of the day, push your changes to your own github profile using

   git push origin master

# TODO

Working in pairs, see if you can figure out how to do the following:

1. Change the application so that it sends a text message to your mobile phone.
2. Change the title in the browser title bar to something more exciting.
3. Change the image to something more interesting or relevant to you.
4. Employ some of the CSS tricks you picked up during the morning's lecture to
pretty the page up a bit:
  * Try out some different fonts
  * Try out some different font sizes
  * Try out some different colours
  * Try changing the layout, so that the form questions appear to the right hand
  side of the image
  * Change the appearance of the submit button so that it is something that you
  would like to click
5. Prevent the text message from being sent unless the checkbox
is ticked. In that event, show a flash message to explain why the form was wrong.
6. Prevent the text message from being sent unless the user picked
at least one option from the form.
7. Change the app so that the user must provide their name and
  1. Put their name in the text message that gets sent
  2. Put their name in the thank you flash message that is displayed
8. In your pairs, come up with another use for this application and completely
modify it, changing the title, image and purpose of the submission form. Prizes
for the best applications that get finished by the end of the day.
9. Invite your friends and family on the web to try your application by posting
your heroku URL on Twitter/Facebook.
10. When you have finished, submit a pull request so that I can review your work. Info on how to do that is here: https://help.github.com/articles/using-pull-requests
