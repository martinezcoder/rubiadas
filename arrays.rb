puts "ary = [1, 2, \"3\"]"


ary = [1, 2, "3"]

puts
str = ary + ["foo", "bar"]
str = str.join(":")
puts str

puts
str = ary * 2
str = str.join(":")
puts str

puts
str = ary[0]
puts str

puts
str = ary[0,2]
str = str.join(":")
puts str

puts
str = ary[0..1]
str = str.join(":")
puts str

puts
str = ary[-2]
puts str

puts
str = ary[-2,2]
str = str.join(":")
puts str

puts
str = ary[-2..-1]
str = str.join(":")
puts str

puts
str = ary.join(":")
str = str.split(":")
puts str
