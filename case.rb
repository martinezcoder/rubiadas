
print "i?"

case valor = STDIN.gets.chop.to_i
	when 1, 2..5
		puts "1..5"
	when 6..10
		puts "6..10"
	else 
		puts "mayor que 10 o no es número entero"
end

print "Escribe \"abcdef\" o \"aaa\" o \"bbb\": $>"
case valor = STDIN.gets.chop
when 'aaa','bbb'
	puts "aaa or bbb"
when /cde/  # "cde" es un sub-string de abcdef
	puts "El texto incluye /cde/"
end

