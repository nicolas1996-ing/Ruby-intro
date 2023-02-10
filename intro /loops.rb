# ciclos 

# while 
condition = 1
puts "while..."
while( condition < 10) do 
    puts condition
    condition+=1    
end

# do end 
puts "do end..."
x = 1
loop do
    puts x
    x+=1
    break if x >= 5
end

# for 
puts "for ..."
for i in 1..10 do
    puts i
end

puts "each ..."
[1,2,3,4].each {|x| puts x}

puts "times ..."
4.times {|x| puts x} # 0-3
