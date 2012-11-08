#mientras la división de más grande que 7 nos quedamos con el resto
#cuando la división sea menor que 7 nos quedamos con el resultado.


#si no se puede dividir por ningún numero menor o igual que su raíz cuadrada, entonces es primo.


def sistema7 num

	if (num % 2 == 0) || (num % 5 == 0) || (num % 7 == 0)
		#puts "#{num} es par, multiple de 5 o de 7"
		sumaprimo = 2
	else

		arr = [num%7]

		sig = num / 7
  
  	while sig >= 7 do
			arr += [sig%7]
			sig = sig / 7
		end

		arr += [sig]

		#resultado = arr.reverse.join("").to_i
  
		sumaprimo = 0 
		for c in arr
			sumaprimo += c	
		end

	end	
	#	puts "la suma de #{arr.reverse.join("")} es #{sumaprimo}"
  sumaprimo

end


def esprimo num
	nummax = Math.sqrt(num)
	primo = true

	i = 2
	while (i < nummax+1) && (primo) do

		if num % i == 0
			primo = false
		end
		i += 1

	end

	primo 

end




num = 1 

#while num <= 155 do
while 1

	numtrato = sistema7( num)
	puts  "#{numtrato}" if numtrato != 2
	while numtrato > 7 
	  numtrato = sistema7(numtrato)	
		print "#{numtrato}  "
	end
	
	if (esprimo numtrato) && (numtrato >= 5)
		print "#{num} es primo."
		if esprimo num
				puts 
		else
				puts "raiz cuadrada #{Math.sqrt(num)}"
				puts "===> error"
		end
		puts
	end

=begin	
	if esprimo num
		print "#{num} es primo.  "
		sistema7(num)
	end
=end

	num +=1

end

