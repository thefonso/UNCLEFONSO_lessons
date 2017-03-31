# 3. NYC Boroughs
print "what borough do you live in? "
borough = gets.chomp.downcase
case borough
  when "manhattan"
    puts "pretentious!"
  when "brooklyn"
    puts "hipster!"
  when "queens"
    puts "i'm so sorry!!!"
  when "bronx"
    puts "WTF"
  when "staten island"
    puts "where is that?!?"
  else
    puts "that's not in new york!"
end