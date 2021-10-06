def signup
	puts "Veuillez créer votre mot de passe :"
	print ">"
	password = gets.chomp
	return password
end

def login(password)
	puts "Veuillez réécrire votre mot de passe :"
	print ">"	
	verification = gets.chomp
	while verification != password
		puts "Veuillez réécrire votre mot de passe :"
		print ">"	
		verification = gets.chomp
	end
	return verification
end

def welcome_screen(verification, password)
	if verification = password
		puts "Bienvenue dans la chambre secrete :"
		puts "┼┼┼┼┼┼┼▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄┼┼┼┼┼┼"
		puts "┼┼┼┼┼┼┼█▒▒░░░░░░░░░▒▒█┼┼┼┼┼┼"
		puts "┼┼┼┼┼┼┼┼█░░█░░░░░█░░█┼┼┼┼┼┼┼"
		puts "┼┼┼┼─▄▄──█░░░▀█▀░░░█──▄▄─┼┼┼"
		puts "┼┼┼┼█░░█─▀▄░░░░░░░▄▀─█░░█┼┼┼"
		puts "┼██░██░████░██░░░██░░░█████┼"
		puts "┼██▄██░██▄▄░██░░░██░░░██░██┼"
		puts "┼██▀██░██▀▀░██░░░██░░░██░██┼"
		puts "┼██░██░████░████░████░█████┼"
	end
end

def perform
	password = signup
	verification = login(password)
	welcome_screen(verification, password)
end

perform