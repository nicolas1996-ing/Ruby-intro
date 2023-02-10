# procs == lambdas 
# hace referencia a un metodo (funcion)

getting  = Proc.new{|name| puts "hello #{name}"}
puts getting.class

# llamado de la funcion 
puts getting.call("nicolas")

# ejemplo 2
class Transaction 
    def exec
        puts ("transaction execute")
        # block_given: detecta si estan pasando un proc/lambda 
        if block_given?
            yield
        end
    end
end

tx = Transaction.new
tx.exec # without lambda 
tx.exec {puts "then the transaction ..."} # with lambda ...
