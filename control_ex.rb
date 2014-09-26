puts "Want your temperature in Celsius?"
answer = gets.chomp().to_s
if answer == "yes"
	celsius_flag = true
else celsius_flag = false
end
puts "What is today\'s temperature?"
user_input = gets.chomp().to_i
if celsius_flag == true 
	todays_temperature = (user_input*(9/5))+32
	response = "Hello, the temperature is #{user_input} degrees C \n Our thoughts:"
elsif celsius_flag == false
	todays_temperature = user_input
	response = "Hello, the temperature is #{user_input} degrees F \n Our thoughts:"
end
puts response
if todays_temperature < 0
	puts "Stay inside"
else
	case todays_temperature
		when todays_temperature < 0
			puts "Stay inside"
		when 0..15
			puts "Put on some long johns"
		when 15..30
			puts "Put on mittens"
		when 30..45
			puts "Put on a jacket"
		when 45..60
			puts "Put on a sweater"
		when 60..75
			puts "Feeling comfy"
		when 75..90
			puts "Maybe you should take that sweater off"
		else
			puts "Time to get the air conditioner out of the basement"
	end
end