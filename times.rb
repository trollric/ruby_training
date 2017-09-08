birthday = Time.mktime(1990, 5, 2, 18, 29)
current_time = Time.new

age_in_time = current_time - birthday

puts current_time
puts birthday
puts age_in_time

puts "Age in minutes = #{age_in_time/60}"
puts "Age in hours = #{age_in_time/(60*60)}"
puts "Age in days = #{age_in_time/(60*60*24)}"
age_in_years = age_in_time/(60*60*24*365)
puts "Age in years = #{age_in_years}"

age_in_years.to_i.times do |x|
  puts "SPANK! Nr: #{x+1}"
end
