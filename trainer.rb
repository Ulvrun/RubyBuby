
require_relative 'person'

class Trainer < Person

  attr_accessor :experience

  def initialize(first_name, last_name, age, gender, experience)

    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
    @experience = experience

    puts "New trainer is created: #{first_name} #{last_name}."
    puts "He is #{age} years old."
    puts "He works in fitness for: #{experience} years"

  end

end