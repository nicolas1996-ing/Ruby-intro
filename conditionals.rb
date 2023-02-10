# condicionales 

isAuthenticated = false
if(isAuthenticated)
    puts "screen admin"
else
    puts "screen login"
end


role = :admin 
#role = :super_admin 
#role = :login

if(role == :admin)
    puts "admin"
elsif role == :super_admin
    puts "super admin"
else
    puts "login"
end
