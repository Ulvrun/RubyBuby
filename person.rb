
class Person

  attr_accessor :age

  def initialize(first_name, last_name, age, gender)

    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender

    puts "New person is created: #{first_name} #{last_name}. He is #{age} years old."

  end
end
