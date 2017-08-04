require 'pry'
require 'pg'

option = ""

while option != "q"
  conn = PG.connect(:dbname => 'facebook', :host => 'localhost')
  conn.exec("SELECT * FROM users") do |result|
    result.each do |row|
      puts row
    end
  end

  print 'First name: '
  first = gets.chomp
  print 'Last name: '
  last = gets.chomp
  print 'DOB: '
  dob = gets.chomp
  print 'Relationship Status: '
  rel = gets.chomp
  print 'Number of friends: '
  friends = gets.chomp.to_i
  print 'City: '
  city = gets.chomp

  sql_command = "INSERT INTO users (first, last, dob, relationship, friends, city) VALUES ('#{first}', '#{last}', '#{dob}', '#{rel}', '#{friends}', '#{city}');"
  conn.exec(sql_command)

  print 'Do you want to (q)?'
  option = gets.chomp

  if option == "q"
    conn.close
    break
  end

end