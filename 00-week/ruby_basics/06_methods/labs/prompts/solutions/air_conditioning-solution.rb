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