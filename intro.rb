# open ruby from terminal: irb 
# execute file from terminal: ruby file.rb
# extension runy: rb

=begin
    comentario multilinea
        x = 1
        x.odd? ... true  [ impar? ]
        x.even? ... false [ par? ]
        x.methods ... metodos asociados a la clase 
        x.class ... tipo de clase/variable 
    interpolacion de variables

=end

puts('---- intro ruby ----')
# tags 
name = 'nicolas'
surname = 'aristizabal'
puts(name)
name = 12
puts(name)

tutor_complete_name = 'jose nicolas aristizabal ramirez'
puts tutor_complete_name

# palabras reservadas
# new

# numbers
# int/float 

n1 = 10
n2 = 3
result = n1/n2 # 3

n3 = 10.0
n4 = 3
result_two = n3/n4 # 3.3333333 

# int -> float & float -> int 
puts n1.to_f # 10.0
puts n3.to_i # 10

# absolute 
puts -10.abs

# evaluate pair number 
puts 4.even? # true 

# next number ...
puts 4.next  # 5

# interpolacion de variables 
# al usar '' desactivamos la interpolacion
name = 'nicolas'
gretting = "hello #{name}"
gretting_two = %Q(hello #{name})
puts gretting
puts gretting_two

# methods 
puts name.upcase # NICOLAS 
puts name.downcase # nicolas
puts name.length # 7 
puts name.swapcase # salocin ... convierte las mayusculas de una cadena en minisculas y viceversa 
puts name.include? "nico" # true 
puts name.include? "f" # false 
puts " -this string has spaces- ".strip # eliminar espacios de una cadena 
puts "".empty?
puts name.empty?

name_complete = "jose nicolas aristizabal"
puts name_complete
name_complete = name_complete.gsub("jose", "")
puts name_complete

# operadores para string 
product = "computador"
product = product + " portatil "  # concatenacion
puts product
puts product*2
puts product[0]

# creando o reasignando valores
brand = 'mazda'
brand = brand.gsub('m', 'n') # crear nueva variables 
puts brand
brand.gsub!('n','m') # trabajando sobre la misma variables (!)\
puts brand

# datos tipo symbols 
name_one = 'nicolas'
name_two = 'nicolas'
puts name_one.object_id # diferente id
puts name_two.object_id

## declarando simbolos (constantes)
color_one = :red
color_two = :red
puts color_one.object_id # mismo _id
puts color_two.object_id

# array
puts "------------- array -----------------"
letters = ["a","b","a","z","c"]
puts letters.class
# puts letters.methods
puts letters.size
puts letters[0] # idx 
puts letters[1]
puts letters[-1]
puts letters[-100] # nil === err s
puts letters.methods.size
puts letters.first  # a
puts letters.last   # c
puts letters.include?'a' # true 
puts letters.include?'z' # false
puts letters.count{ |x| x == "a"} # how elements of letter are equal to: "a"

numbers = [1,2,3,4,5,6,7,8,9]
# count
puts numbers.count{|n| n < 4} # 3
puts numbers.count{|n| n.even?} # par: 4
puts numbers.count{|n| n.odd?} # impar: 5
# map 
numbers_two = numbers.map{|n| n*2} # no modifica el original 
puts numbers
puts numbers_two
# select === filter 
numbers_filter = numbers.select{|n| n.odd?}
puts numbers_filter

arr_types = ["a",1, :symbol, 2]
puts arr_types.map{|p| p.class}

# string as arr and split
str_as_arr = "hello world"
str_arr = str_as_arr.split(" ")
puts str_as_arr
puts str_arr
puts str_arr.size
puts str_arr.class

# split + upcase + join
str_to_upcase = str_arr.map{|s| s.upcase}.join(" ")
puts str_to_upcase

puts "sort sin modificar variable ppal: (!) " 
letters_sort = letters.sort 
numbers_sort = numbers.sort
puts letters
puts letters_sort

puts "sort modificando variable ppal " 
letters_sort_two = letters.sort! 
numbers_sort_two = numbers.sort!
puts letters
puts letters_sort_two

puts 'hash datatype '
var_hash = {"colombia" => "bogota", "peru" => "lima"}
var_hash["mexico"] = "ciudad de mexico"
puts var_hash
puts var_hash["peru"]
puts var_hash.size
puts var_hash.empty?

# has_value
puts var_hash.has_value?"bogota" # true
puts var_hash.has_value?"buenos aires" # false

# has_key
puts var_hash.has_key?"colombia"
puts var_hash.has_key?"argentina"

# invert has ... key => value 
var_hash_inverter = var_hash.invert
puts var_hash
puts var_hash_inverter

# merge: mezclar dos hash 
var_hash_merge_one = {"mazda"=>2007, "nissan"=> 2010}
puts var_hash_merge_one
var_hash_merge_two = {"chevrolet" => 2011}
puts var_hash_merge_two
var_hash_merge = var_hash_merge_one.merge(var_hash_merge_two)
puts var_hash_merge


# transform values 
var_hash_transform = var_hash_merge.transform_values {|val| val.to_f}
puts var_hash_merge
puts var_hash_transform

puts var_hash_transform.map{|k,v| "el modelo de #{k} es #{v}"}

# create has from pair values
pair_values = [["nicolas", 23],["alejandra", 25]] 
pair_values_to_h = pair_values.to_h
puts pair_values_to_h
puts pair_values


names = ["felipe", "oscar", "diego","kleisman","nicolas", "david", "forest"]
names_random = names.shuffle
group_one = names_random.slice(0,names.length/2)
group_two = names_random.slice(names.length/2, names.length)
puts "group one: #{group_one}"
puts "group two: #{group_two}"