words = ['foobar', 'baz', 'guux']
secreto = words[rand(3)]

puts "Posibilidades: foobar, baz, guux. F6 para cancelar."
print "Adivina? "

while adivina = STDIN.gets
	adivina.chop!  # elimina el caracter ENTER al final del texto introducido 
	if adivina == secreto
		puts "Acierto!"
		break
	else
		puts "Lo siento. Pierdes"
	end
	print "adivina? "
end

puts "La palabra es #{secreto}."  
# print "La palabra es ", secreto,".\n"
# print "La palabra es " + secreto + ".\n"
