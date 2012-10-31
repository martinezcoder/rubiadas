def fact(n)

  if n == 0
    1
  else
    n * fact(n-1)
  end
end

print fact(ARGV[0].to_i), "\n"

# to_i convierte el argumento de tipo "char" a tipo "integer" para poder ser procesado con funciones matematicas


