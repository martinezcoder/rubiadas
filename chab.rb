# el operador =~ se usa solo para expresiones regulares. Devuelve la posición en un
# string donde se encuentran coincidencias, o nulo si no las hay.

# Por ejemplo, 
# la expresión: "abcdef" =~ /d/ 
# devolverá 3, puesto que la letra "d" está en la posición 3 del sting
# y la expresión: "aaaaaa" =~ /d/ 
# devolverá nil puesto que no existe caracter "d" en el string


def chab(s) # "contains hex in angle brackets"
	(s =~ /<0(x|X)(\d|[a-f]|[A-F])+>/) != nil
end

puts
puts
puts
puts "Regular expression: <0(x|X)(\\d|[a-f]|[A-F])+>"
puts


print "text: \"Not this one.\" = "
puts chab "Not this one. "

puts
print "text: \"Maybe this? {0x35}\" = "
print chab "Maybe this? {0x35}"   # wrong kind of brackets
puts ".  (it was a wrong kind of brackets)."


puts
print "text: \"Or this? <0x38z7e>\" = "
print chab "Or this? <0x38z7e>"   # bogus hex digit
puts ".  (wrong hex digit)."

puts
print "text: \"Okay, this: <0xfc0004>.\" = "
puts chab "Okay, this: <0xfc0004>."

puts
print "text: \"<0xaA>\" = "
puts chab "<0xaA>"
print "text: \"<0Xbc>\" = "
puts chab "<0Xbc>"



