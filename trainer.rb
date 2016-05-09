
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

    client_first_name = client.first_name

    puts "Calculate BMI for #{client_first_name} #{client.last_name}:"

    # Body Mass Index is defined as the body mass divided by the square of the body height
    bmi = (client.weight / ((client.height * 0.01) ** 2)).round

    puts "Based on height #{client.height} and weight #{client.weight}, client's BMI = #{bmi}"

    case bmi

      when 0...18.5
        puts "#{client_first_name} is underweight currently"
      when 18.5..24.9
        puts "#{client_first_name} has normal weight currently"
      when 25..29.9
        puts "#{client_first_name} is overweight currently"
      when 30..39.99
        puts "#{client_first_name} is obese currently"
      when bmi > 40
        puts "#{client_first_name} is morbidly obese"
    end

    bmi

  end

  def prepare_diet_tips(bmi)

    diet_type = choose_diet(bmi)

    puts "For #{diet_type}, next tips & advices are assumed:"

  end

  protected

  def choose_diet(bmi)

    diet = { weight_loss: 'Weight Loss',
             mass_gain: 'Gaining Weight',
             balanced: 'Balanced Nutrition'}

    case bmi

      when 0...18.5
        diet_type = diet[:mass_gain]
      when 18.5..24.9
        diet_type = diet[:balanced]
      else
        diet_type = diet[:weight_loss]

    end

    puts "Taking into consideration client's BMI = #{bmi} your diet plan is '#{diet_type}'"

    diet_type

  end

end
