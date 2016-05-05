
require_relative 'person'
require_relative 'client'

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

  def calc_body_mass_index(client)

    puts "Calculate BMI for #{client.first_name} #{client.last_name}:"

    # Body Mass Index is defined as the body mass divided by the square of the body height
    bmi = (client.weight / ((client.height * 0.01) ** 2)).round

    puts "Based on height #{client.height} and weight #{client.weight}, client's BMI = #{bmi}"

    case bmi

      when 0...18.5
        puts 'Under Weight'
      when 18.5..24.9
        puts 'Normal Weight'
      when 25..29.9
        puts 'Over Weight'
      when 30..39.99
        puts 'Obese'
      when bmi > 40
        puts 'Morbidly Obese'
    end

    bmi

  end

  def prepare_diet_tips(bmi)

    puts "Taking into consideration client's BMI = #{bmi}, next tips & advices are assumed:"

  end
end
