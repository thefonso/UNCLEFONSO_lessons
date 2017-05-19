#  This will take a file called receipt.txt if it exists and overwrite it,
#  or create a new file for writing
f = File.new('receipt.txt', 'w') # `w` Write-only
puts "Receipt Generator."
print "Good/Service provided?: "
service = gets.chomp
print "Cost?: "
cost = gets.chomp

# Write each line to the file
f.puts("- Company Name: Particular Assembly Inc.")
f.puts("- Good/Service Provided: #{service}")
f.puts("- Cost: $#{cost}")
f.puts("- Thank you for your patronage")

# Always close your file!
f.close
