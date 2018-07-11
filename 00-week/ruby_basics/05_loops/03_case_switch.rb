# THE BASIC FORM OF A CASE STATEMENT
name = gets.chomp
case name
when "Alice"
  puts "Welcome Alice"
when /[qrz].+/i
  puts "Your name begins with Q, R or Z, you're not welcome here!"
else
  puts "Welcome stranger!"
end

HOW THE TYPE COMES INTO PLAY

def do(thing)
  case thing
  when Sound
    # Play the sound
    SoundManager.play_sample(thing)
  when Music
    # Play the music in the background
    SoundManager.play_music(thing)
    SoundManager.music_paused = false
  when Graphic
    # Display the graphic
    Display.show(thing)
  else
    # Unknown resource
    raise "Unknown resource type"
end

# Another form
case
when name == "Bob"
  puts "Hello Bob!"
when age == 100
  puts "Happy 100th birthday!"
when occupation =~ /ruby/
  puts "Hello, Rubyist!"
else
  puts "I don't think I know you."
end

# A MORE COMPACT SYNTAX
case arguments
when 1 then arg1(a)
when 2 then arg2(a,b)
when 3 then arg2(b,a,7)
when 4 then arg5(a,b,c,d,'test')
when 5 then arg5(a,b,c,d,e)
end
