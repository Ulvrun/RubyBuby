require_relative 'person'

class Client < Person

  attr_accessor :weight

  def initialize(first_name, last_name, age, gender, weight)

    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
    @weight = weight

    puts "New client is created: #{first_name} #{last_name}."
    puts "He is #{age} years old. Start weight: #{weight}"

  end

end

client_zkurilo = Client.new('Zhenya', 'Kurilo', 31, :male, 71)