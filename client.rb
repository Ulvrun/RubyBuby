require_relative 'person'

class Client < Person

  attr_reader :first_name, :last_name, :height, :weight
  attr_accessor :bust, :waist, :hip

  def initialize(first_name, last_name, age, gender, height, weight)

    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
    @height = height
    @weight = weight

    puts "New client is created: #{first_name} #{last_name}."
    puts "He is #{age} years old. Start weight: #{weight}"

  end

  def measure_body_sizes(bust, waist, hip)

    @bust = bust
    @waist = waist
    @hip = hip

    puts "Body sizes parameters: bust = #{bust}, waist = #{waist}, hip = #{hip}"

  end
end
