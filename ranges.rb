range_one = (1..4) # incluye el limit sup
range_two = (1...4) # no incluye el limit sup

puts range_one.class 
arr_range = range_one.to_a
puts arr_range

puts range_one.methods.size
puts range_one.include?1 # true
puts range_one.include?10 # false

# range of letters ...
range_letters = ("a".."f")
range_letters_two = ("a"..."c") # a,b
range_let_to_arr = range_letters.to_a
range_let_to_arr_two = range_letters_two.to_a
puts range_let_to_arr
puts range_let_to_arr_two