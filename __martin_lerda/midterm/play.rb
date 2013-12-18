require_relative "capitals_game"
require_relative "countries"

capitals = Capitals.new

puts "Hello! Choose from the following to discover more about the country: "
puts "Argentina, Brazil, United States"
user_input = gets.chomp.to_s
puts "---"

if user_input == "Argentina"
	capitals.get_from_worldbank_1	
	puts capitals.display_countries
	puts "---"
elsif user_input == "Brazil"
	capitals.get_from_worldbank_2
	puts capitals.display_countries
	puts "---"
elsif user_input == "United States"
	capitals.get_from_worldbank_3
	puts capitals.display_countries
	puts "---"
else
	puts "Sorry, I could not understand the words coming out of your fingers, please try again."
	puts "---"
end



	
