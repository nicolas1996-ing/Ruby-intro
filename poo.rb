# =====================================================
class Person 
    # class methods, only allow in class no instances 
    def self.suggeted_names 
        ["nicolas", "jose", "camila", "alejandra"]
    end


    # constructor ...
    def initialize(name, age)
        @name  =  name
        @age = age
    end

    # methods ... 
    def name 
        # return is not needed 
        @name 
    end

    def age
        @age 
    end

    def name=(name)
        @name = name
        self 
    end

    def age=(age)
        @age = age
    end

end


# instance ... 
person_one = Person.new("nicolas", 26)
puts person_one.name
puts person_one.age
puts Person.suggeted_names

# =====================================================
# second form declare class 
class Person_two
    attr_accessor :name, :age 

    # class methods, only allow in class no instances 
    def self.suggeted_names 
        ["nicolas", "jose", "camila", "alejandra"]
    end

    # constructor ...
    def initialize(name, age)
        @name  =  name
        @age = age
    end

end

person_two = Person_two.new("sebastian", 16)
puts person_two.name
puts person_two.age
person_two.age = 20
puts person_two.age

# =====================================================
# third form declare class 
class Person_three < Struct.new(:name, :age)
     # class methods, only allow in class no instances 
     def self.suggeted_names 
        ["nicolas", "jose", "camila", "alejandra"]
    end
end

person_three = Person_three.new("sebastian", 16)
puts person_three.name
puts person_three.age
person_three.age = 20
puts person_three.age