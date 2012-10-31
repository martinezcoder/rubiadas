
st = "\033[7m"
en = "\033[m"

puts "Enter an empty string at any time to exit."

while true
	print "Escribe una frase. $> "; STDOUT.flush; str = gets.chop
	break if str.empty?
	print "Escribe una substring $> "; STDOUT.flush; pat = gets.chop
	break if pat.empty?
	
	re = Regexp.new(pat) # crea un objeto de la clase "regular expression".
	puts str.gsub(re, "#{st}\\&#{en}") 
	# gsub significa "globally substitute" 
	# sustituye cada coincidencia de sí mismo con el objeto re
	# "st" y "en" se han definido en las dos primeras líneas
	# son secuencias ANSI que invierten el color de texto
end

=begin
¿Que es el STDOUT.flush? Pues bien, cuando usamos la función print, no 
escribimos directamente en la pantlla, sino en una memoria intermedia
(lo que se llama un buffer). Cuando este buffer se llena o cuando metemos
un caracter "\n" es cuando se envía el texto a la pantalla. En este ejemplo
queremos que el cursor se quede justo después del print, sin usar un "\n".
La función "STDOUT.flush" lo que hace es enviar a la pantalla lo que hay en 
ese buffer, ya que en algunas ocasiones el comando print no lo mostrará hasta
encontrar un "\n".
=end
