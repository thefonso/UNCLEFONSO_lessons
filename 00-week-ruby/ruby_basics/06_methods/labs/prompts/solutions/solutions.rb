# 1. Drinking age?
def drinking_age(age)
  if age >= 21
    puts "you are a lush!"
  else
    puts "quick kids, the parents are coming!"
  end
end


# 2. Air Conditioning
def air_conditioning(current_temperature, is_functional, desired_temperature)
  if current_temperature > desired_temperature && is_functional == 'y'
    puts "Turn on the A/C Please"
  elsif current_temperature > desired_temperature && is_functional == 'n'
    puts "Fix the A/C now!  It's hot!"
  else
    puts "Fix the A/C whenever you have the chance...  It's cool..."
  end
end


# 3. City Boroughs
def boroughs_nyc(borough)
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
end
