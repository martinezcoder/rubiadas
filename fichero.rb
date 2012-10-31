def first_line ( filename )
	begin
		if filename != ""
			file = open(filename)
		else
			raise "Enter para salir."
		end 
	rescue
		puts "#{$!}"
		print "Escriba un nombre de fichero valido: "
		filename = STDIN.gets.chop
		exit if filename.empty?
		retry
	end

	begin
		puts "Tratando fichero..."
		info = file.gets
		puts info
		puts "Saliendo..."
	ensure	
		file.close
	end
end

fichero1 = first_line("")

