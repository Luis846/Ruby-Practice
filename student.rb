

class Student
    attr_accessor :first_name, :last_name, :primary_phone_number

    def introduction(target)
        puts "Hi, #{target}, I'm #{first_name}"
    end

    def favorite_number
        7
    end
end

Luis = Student.new
Luis.first_name = "Luis"
Luis.last_name = "Rivera"
puts "Luis's favorite number is #{Luis.favorite_number}."