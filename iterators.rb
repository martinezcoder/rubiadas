# escribimos en modo C

	s="abc"; i=0

	while i < s.length
		printf "<%c>", s[i], 
		i += 1
	end;
	print "\n"


	for l in "a\nb\nc\n"
		print l
	end


# lo mismo en modo Ruby

	"abc".each_byte{|c| printf "<%c>", c}
	print "\n"


	"a\nb\nc\n".each_line{|l| print l}
