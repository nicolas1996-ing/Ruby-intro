regex_email =  /\w+@gmail.com/
puts regex_email.class # regexp


evaluate_regex = "nico@gmail.com".match  regex_email
evaluate_regex_two = "nico@gmailcom".match  regex_email
puts evaluate_regex # nico@gmail.com
puts evaluate_regex_two # nil

regex_number = /\d+/
puts "1".match regex_number
puts "a".match regex_number # nil
